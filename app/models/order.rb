class Order < ActiveRecord::Base
	attr_accessible :issue, :description, :time
	validates :issue, presence: true
	validates :description, presence: true
	validates :time, presence: true

	belongs_to :user # creator
	has_many :assignees, :through=>:orders_users, :class_name=>'User', :source=>:user

	scope :roleyes, -> { where(role: "creator") }
	scope :roleno, -> { where(role: "assigner") }

end




