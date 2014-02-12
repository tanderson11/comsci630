class RemoveBadBoolean < ActiveRecord::Migration
  def change
  	remove_column :orders, :techmasters
  end
end
