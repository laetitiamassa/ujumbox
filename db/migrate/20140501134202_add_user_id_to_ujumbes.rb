class AddUserIdToUjumbes < ActiveRecord::Migration
  def change
  	add_column :ujumbes, :user_id, :integer
  end
end
