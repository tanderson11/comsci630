class RemoveFieldsFromOrder < ActiveRecord::Migration
  def change
  	remove_column :orders, :first
  	remove_column :orders, :last
  	remove_column :orders, :email
  end
end
