class AddFundingToUjumbes < ActiveRecord::Migration
  def change
    add_column :ujumbes, :funding, :string
  end
end
