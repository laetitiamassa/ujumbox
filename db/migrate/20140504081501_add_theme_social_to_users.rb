class AddThemeSocialToUsers < ActiveRecord::Migration
  def change
    add_column :users, :theme_social, :boolean
  end
end
