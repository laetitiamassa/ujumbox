class AddThemeSecurityToUsers < ActiveRecord::Migration
  def change
    add_column :users, :theme_security, :boolean
  end
end
