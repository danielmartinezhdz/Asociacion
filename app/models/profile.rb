class Profile < ApplicationRecord
	has_many :users_profiles
	has_many :users, :through => :users_profiles
end
