class AddThemeCultureToUjumbes < ActiveRecord::Migration
  def change
    add_column :ujumbes, :theme_culture, :boolean
  end
end
