class Transaction < ApplicationRecord
  belongs_to :user
  enum state: [:pending, :rejected, :accepted]

end
