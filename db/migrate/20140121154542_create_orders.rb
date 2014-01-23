class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :first
      t.string :last
      t.string :email
      t.text :issue
      t.text :description
      t.text :time

      t.timestamps
    end
  end
end
