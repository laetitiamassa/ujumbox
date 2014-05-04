class AddWhatToUjumbes < ActiveRecord::Migration
  def change
    add_column :ujumbes, :what, :text
  end
end
