class ChangeFundingTypeInUjumbes < ActiveRecord::Migration
  def change
  	change_column :ujumbes, :funding, :text
  end
end
