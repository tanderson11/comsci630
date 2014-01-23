class Order < ActiveRecord::Base
	attr_accessible :first, :last, :email, :issue, :description, :time
	validates :first, presence: true
	validates :last, presence: true
	validates :email, presence: true
	validates :issue, presence: true
	validates :description, presence: true
	validates :time, presence: true

	has_and_belongs_to_many :users
	has_many :orders_users
end
