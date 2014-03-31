class Droptable < ActiveRecord::Migration
  def change
  	drop_table :orders_users
  end
end
