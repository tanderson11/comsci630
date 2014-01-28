class CreateOrdersUsers < ActiveRecord::Migration
  def change
    create_table :orders_users do |t|
    	t.integer :order_id, null: false
    	t.integer :user_id, null:false
      	t.timestamps
    end
  end
end
