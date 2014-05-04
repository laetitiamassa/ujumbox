class AddThemeEducationToUjumbes < ActiveRecord::Migration
  def change
    add_column :ujumbes, :theme_education, :boolean
  end
end
