class AddThemeForeignToUsers < ActiveRecord::Migration
  def change
    add_column :users, :theme_foreign, :boolean
  end
end
