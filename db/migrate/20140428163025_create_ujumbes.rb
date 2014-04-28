class CreateUjumbes < ActiveRecord::Migration
  def change
    create_table :ujumbes do |t|
      t.string :title
      t.string :theme
      t.datetime :date
      t.text :description
      t.string :link
      t.string :type
      t.boolean :private

      t.timestamps
    end
  end
end
