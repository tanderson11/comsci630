class AddFieldToJoinTable < ActiveRecord::Migration
  def change
  	add_column :orders, :role, :string
  end
end
