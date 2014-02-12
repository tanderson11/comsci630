class Order < ActiveRecord::Base
	attr_accessible :issue, :description, :time
	validates :issue, presence: true
	validates :description, presence: true
	validates :time, presence: true

	has_and_belongs_to_many :users
	has_many :orders_users
end
