class AddCareerToUsers < ActiveRecord::Migration
  def change
    add_column :users, :career, :text
  end
end
