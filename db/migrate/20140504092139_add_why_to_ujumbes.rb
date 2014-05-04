class AddWhyToUjumbes < ActiveRecord::Migration
  def change
    add_column :ujumbes, :why, :text
  end
end
