class Removetechmasters < ActiveRecord::Migration
  def change
  	remove_column :users, :techmasters
  end
end
