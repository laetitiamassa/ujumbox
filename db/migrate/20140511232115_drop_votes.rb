class DropVotes < ActiveRecord::Migration
  def up
    drop_table :votes
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end

end
