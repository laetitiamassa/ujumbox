class AddUserIdToActs < ActiveRecord::Migration
  def change
    add_column :acts, :user_id, :integer
  end
end
