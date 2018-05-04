class UserProfile < ApplicationRecord
	has_many :users
	has_many :admins

	validates :phone, length: { in: 9..12 }
	validates :phone, numericality: { only_integer: true }
	validates :password, length: { in: 5..12 }
	validates :email, format: { with: /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i }
	validates :username, uniqueness: true
	validates :username, :name, :email, :password, :credit_card_info, :address, :country, presence: true

	PASSWORD_FORMAT = /\A
  	(?=.{8,})          # Must contain 8 or more characters
  	(?=.*\d)           # Must contain a digit
  	(?=.*[a-z])        # Must contain a lower case character
  	(?=.*[A-Z])        # Must contain an upper case character
  	(?=.*[[:^alnum:]]) # Must contain a symbol
	/x
	validates :password, format: { with: PASSWORD_FORMAT } 
end
