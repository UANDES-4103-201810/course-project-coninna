class User < ApplicationRecord
	has_one :user_profile
	has_many :projects
	has_one :wishlist
end
