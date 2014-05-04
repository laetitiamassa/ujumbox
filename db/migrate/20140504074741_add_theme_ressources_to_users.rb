class AddThemeRessourcesToUsers < ActiveRecord::Migration
  def change
    add_column :users, :theme_ressources, :boolean
  end
end
