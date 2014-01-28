class Order < ActiveRecord::Base
	attr_accessible :form_first, :form_last, :form_email, :issue, :description, :time
	validates :form_first, presence: true
	validates :form_last, presence: true
	validates :form_email, presence: true
	validates :issue, presence: true
	validates :description, presence: true
	validates :time, presence: true

	has_and_belongs_to_many :users
	has_many :orders_users
end
