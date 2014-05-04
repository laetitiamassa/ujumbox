class AddThemeSecurityToUjumbes < ActiveRecord::Migration
  def change
    add_column :ujumbes, :theme_security, :boolean
  end
end
