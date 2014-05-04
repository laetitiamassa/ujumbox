class AddThemeSocialToUjumbes < ActiveRecord::Migration
  def change
    add_column :ujumbes, :theme_social, :boolean
  end
end
