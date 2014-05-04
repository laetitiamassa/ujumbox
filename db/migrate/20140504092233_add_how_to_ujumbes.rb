class AddHowToUjumbes < ActiveRecord::Migration
  def change
    add_column :ujumbes, :how, :text
  end
end
