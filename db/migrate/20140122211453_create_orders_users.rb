class CreateOrdersUsers < ActiveRecord::Migration
  def change
    create_table :orders_users do |t|

      t.timestamps
    end
  end
end
