class User < ApplicationRecord

	has_secure_password

	validates_uniqueness_of :username, :email, presence: true
	validates :name, presence: true


end
