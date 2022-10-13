class Account < ApplicationRecord
  validates :email, :full_name, presence: true
  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP } 

end
