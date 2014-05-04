class AddThemeEconomyToUjumbe < ActiveRecord::Migration
  def change
    add_column :ujumbes, :theme_economy, :boolean
  end
end
