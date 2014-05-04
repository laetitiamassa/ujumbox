class AddBudgetToUjumbe < ActiveRecord::Migration
  def change
    add_column :ujumbes, :budget, :string
  end
end
