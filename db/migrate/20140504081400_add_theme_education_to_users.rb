class AddThemeEducationToUsers < ActiveRecord::Migration
  def change
    add_column :users, :theme_education, :boolean
  end
end
