class RemoveStatus < ActiveRecord::Migration
  def change
  	remove_column :orders, :status
  	remove_column :users, :usertype
  	remove_column :users, :techmaster
  end
end
