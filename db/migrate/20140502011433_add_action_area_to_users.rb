class AddActionAreaToUsers < ActiveRecord::Migration
  def change
    add_column :users, :action_area, :text
  end

  def up
    change_column :users, :action_area, :text, array: true, default: []
  end

	def down
    change_column :users, :action_area, :text
  end
end
