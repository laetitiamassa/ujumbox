class AddThemeScientificToUjumbes < ActiveRecord::Migration
  def change
    add_column :ujumbes, :theme_scientific, :boolean
  end
end
