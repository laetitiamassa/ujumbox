class AddThemeScientificToUsers < ActiveRecord::Migration
  def change
    add_column :users, :theme_scientific, :boolean
  end
end
