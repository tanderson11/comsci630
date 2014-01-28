class AddFieldsToUser < ActiveRecord::Migration
  def change
  	add_column :orders, :form_first, :string
  	add_column :orders, :form_last, :string
  	add_column :orders, :form_email, :string
  	remove_column :users, :type
  end
end
