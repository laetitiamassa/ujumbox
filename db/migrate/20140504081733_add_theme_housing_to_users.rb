class AddThemeHousingToUsers < ActiveRecord::Migration
  def change
    add_column :users, :theme_housing, :boolean
  end
end
