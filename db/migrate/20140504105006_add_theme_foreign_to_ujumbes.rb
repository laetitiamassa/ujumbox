class AddThemeForeignToUjumbes < ActiveRecord::Migration
  def change
    add_column :ujumbes, :theme_foreign, :boolean
  end
end
