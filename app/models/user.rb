class User < ApplicationRecord
  validates :username, presence: true #, uniqueness: true
  validates :email, presence: true #, uniqueness: true, format: { with: URI::MailTo::EMAIL_REGEXP }
  validates :password, presence: true #, format: { with: /\A(?=.*\d)(?=.*[[:^alnum:]])[a-zA-Z\d[:^alnum:]]+\z/ }
end
