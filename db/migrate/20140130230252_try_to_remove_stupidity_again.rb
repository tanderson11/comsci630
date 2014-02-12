class TryToRemoveStupidityAgain < ActiveRecord::Migration
  def change
  	remove_column :orders, :form_first
  	remove_column :orders, :form_last
  	remove_column :orders, :form_email
end
end
