class AddUjumbeIdToActs < ActiveRecord::Migration
  def change
    add_column :acts, :ujumbe_id, :integer
  end
end
