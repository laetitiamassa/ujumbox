class AddNameToUjumbes < ActiveRecord::Migration
  def change
    add_column :ujumbes, :name, :string
  end
end
