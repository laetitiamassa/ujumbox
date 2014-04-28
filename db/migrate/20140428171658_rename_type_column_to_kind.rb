class RenameTypeColumnToKind < ActiveRecord::Migration
  def self.up
    rename_column :ujumbes, :type, :kind
  end

  def self.down
    rename_column :ujumbes, :kind, :type
  end
end
