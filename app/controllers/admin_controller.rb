class AdminController < ApplicationController
  before_action :logged_in_user, only: [:index, :edit, :update]
  before_action :correct_user,   only: [:edit, :update]
  before_action :set_user, only: [:show, :edit, :update, :destroy]
  before_action :admin_user,     only: :destroy


  def index
    @users = User.all
  end

  def show
  end

  def new
    @user = User.new
  end

  def edit
    @users = User.find(params[:id])
  end

  # POST /users
  # POST /users.json
  def create
    @user = User.new(user_params)
    @user.is_admin = true
    if @user.save
      log_in @user
      flash[:success] = "Welcome to the Bank App!"
      redirect_to admin_path(current_user[:id])
    else
      render 'new'
    end
  end

  # PATCH/PUT /users/1
  # PATCH/PUT /users/1.json
  def update
    @user = User.find(params[:id])
    if @user.update_attributes(user_params)
      flash[:success] = "Profile updated"
      redirect_to @user
    else
      render 'edit'
    end
  end

  def state_change_account
    @account = Account.find(params[:id])
    @account.update_attributes(state: params[:chg_state])
    redirect_to show_accounts_path
  end

  def show_accounts
    @pending_accounts = Account.where(state: :inactive)
    @activated_accounts = Account.where(state: :active)
  end

  def show_ptrans
    @pending_accounts = Account.where(state: :pending)
  end

  def manage_transaction
    @transaction = params[:t]
    if params[:chg_state] == :rejected
      @transaction.update_attributes(state: :rejected)
    else
      @transaction.update_attributes(state: :accepted)
      @account = Account.find_by_acc_no(t.from)
      curB = @account.balance
      @account.update_attributes(balance: t.amount+curB)

    end
  end

  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    User.find(params[:id]).destroy
    flash[:success] = "User deleted"
    redirect_to users_url
  end


  private
  # Use callbacks to share common setup or constraints between actions.
  def set_user
    @user = User.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end

  # Before filters

  # Confirms a logged-in user.
  def logged_in_user
    unless logged_in?
      flash[:danger] = "Please log in."
      redirect_to login_url
    end
  end

  # Confirms the correct user.
  def correct_user
    @user = User.find(current_user[:id])
    redirect_to(root_url) unless current_user?(@user)
  end

  # Confirms an admin user.
  def admin_user
    redirect_to(root_url) unless current_user.admin?
  end

end