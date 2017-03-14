Object Oriented Design and Development
Project 1
Akhshay Sridhar, Ruthvik Mandava and Shashank Jha
Super Admin details:
Emailid: super@admin.com
Pass: superadmin
As a user:
When you start our bank app, you will land in our home page. From there, a user/admin can
login if they have already signed up, or sign up. Both admin and user use the same form to sign
in. After you have signed up, you will automatically be logged in. After logging in, the user can:
a) Request Account
You can request for an account here. An admin needs to approve the account
b) View Accounts
i) After an account is requested, it would be in inactive state. So no options would
be available to make transactions
ii) After the account is made active,
One can make a transfer after viewing his accounts, so that there is no
need to fill in his/her account number. In view accounts page, every account is
added with options
a) Transfer​ (only to his friends)
○ Transfer money to anyone in your friend’s list. Choose their
account number from the drop down box. Transfer is
reflected immediately on the balance.
b) Withdraw
○ Withdraw money from you account. Amounts above $1000
will require admin approval.
c) Deposit
○ Deposit money into your account. All deposits will require
admin approval.
d) View Transactions
○ Here, you can see all transactions that have happened in
your account, including borrows and lends.
e) Destroy
○ Destroys an account, and all transactions with it.
c) View your friends
i) You need to navigate to this page to view your friends and as well as add friends.
There is a search option​ made available to check users by name or email and
add him as friend.
ii) Here, you can also ask your friends for money. If they have any accounts, you
can click “borrow request”. Choose an account from that friend, and send a
request.
d) View Your Borrow Requests
i) Here you can see all borrow requests that have been sent to you. You can either
approve them (reflects account balance immediately) or reject them.
As an admin:
When you login as an admin, you will be redirected to admin homepage. You are provided with
many links:
a) View all accounts​ (Go to this link if you want to delete any account)
This will show both pending accounts and activated accounts. For each account
there are options available to
i) Activate/ Deactivate
ii) Destroy ​(Deleting accounts also deletes its transactions, pending or
otherwise)
b) View all admins​ (Go to this link if you want to delete an admin except superadmin)
c) View all users​ (Go to this link if you want to delete a user)
○ Deleting a user also deletes all accounts and transactions associated with that
user
d) View all pending transactions.​ When you view it, you are provided with two options.
○ Approve
○ Reject
Approving will immediately reflect balance
 e) Create User/Admin
There will be a single form for creation of both users and admins. There is a
checkbox is_admin​ that needs to be checked in if an admin has to be created.
