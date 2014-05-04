class AddPartyShortToUsers < ActiveRecord::Migration
  def change
    add_column :users, :party_short, :string
  end
end
