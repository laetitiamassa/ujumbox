class AddThemeEnvironnementToUsers < ActiveRecord::Migration
  def change
    add_column :users, :theme_environnement, :boolean
  end
end
