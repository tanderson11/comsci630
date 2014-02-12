class Techmasters < ActiveRecord::Migration
  def change
  	add_column :users, :techmasters, :boolean
  end
end
