class OrdersUsers < ActiveRecord::Base
	belongs_to :user
	belongs_to :order

	@user.orders # the orders this user has created
	@user.assignments # the orders this user is assigned to

end

