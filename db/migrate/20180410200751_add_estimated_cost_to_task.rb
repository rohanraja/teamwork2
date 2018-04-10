class AddEstimatedCostToTask < ActiveRecord::Migration[5.1]
  def change
    add_column :tasks, :estimated_cost, :integer
  end
end
