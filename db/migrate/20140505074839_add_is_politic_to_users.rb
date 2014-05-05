class AddIsPoliticToUsers < ActiveRecord::Migration
  def change
    add_column :users, :is_politic, :boolean
  end
end
