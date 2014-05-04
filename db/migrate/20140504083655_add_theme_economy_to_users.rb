class AddThemeEconomyToUsers < ActiveRecord::Migration
  def change
    add_column :users, :theme_economy, :boolean
  end
end
