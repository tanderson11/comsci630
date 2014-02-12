class BooleanFalseDefaultMake < ActiveRecord::Migration
  def change
  	change_column :users, :techmasters, :boolean, :default => false
  end
end
