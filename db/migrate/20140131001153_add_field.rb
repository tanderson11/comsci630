class AddField < ActiveRecord::Migration
  def change
  	add_column :orders, :usertype, :string
  end
end
