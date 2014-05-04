class AddThemeCultureToUsers < ActiveRecord::Migration
  def change
    add_column :users, :theme_culture, :boolean
  end
end
