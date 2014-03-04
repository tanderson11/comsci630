class FixClaireBeingStupid < ActiveRecord::Migration
  def change
  	add_column :orders_users, :role, :string
  	remove_column :orders, :role
  end
end
