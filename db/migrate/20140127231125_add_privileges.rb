class AddPrivileges < ActiveRecord::Migration
  def change
  	add_column :orders, :techmasters, :boolean
  end
end
