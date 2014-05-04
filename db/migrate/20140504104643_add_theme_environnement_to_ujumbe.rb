class AddThemeEnvironnementToUjumbe < ActiveRecord::Migration
  def change
    add_column :ujumbes, :theme_environnement, :boolean
  end
end
