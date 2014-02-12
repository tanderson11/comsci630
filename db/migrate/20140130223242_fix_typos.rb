class FixTypos < ActiveRecord::Migration
  def change
  	add_column :orders, :status, :boolean
  	remove_column :users, :status
  end
end
