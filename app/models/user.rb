class User < ActiveRecord::Base
	attr_accessible :first, :last, :email, :password, :password_confirmation
	has_secure_password

	before_save { self.email = email.downcase }
	validates :first, :last, presence: true, length: { maximum: 50 }
	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[andover]+\.[edu]+\z/i
	validates :email, presence:   true,
                	format:     { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }
	validates :password, length: { minimum: 6 }

	has_and_belongs_to_many :order
	has_many :orders_users
	
end