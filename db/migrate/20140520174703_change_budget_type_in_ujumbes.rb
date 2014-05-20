class ChangeBudgetTypeInUjumbes < ActiveRecord::Migration
  def change
  	change_column :ujumbes, :budget, :text
  end
end
