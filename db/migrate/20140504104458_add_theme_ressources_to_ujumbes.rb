class AddThemeRessourcesToUjumbes < ActiveRecord::Migration
  def change
    add_column :ujumbes, :theme_ressources, :boolean
  end
end
