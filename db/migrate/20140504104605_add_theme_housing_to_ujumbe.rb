class AddThemeHousingToUjumbe < ActiveRecord::Migration
  def change
    add_column :ujumbes, :theme_housing, :boolean
  end
end
