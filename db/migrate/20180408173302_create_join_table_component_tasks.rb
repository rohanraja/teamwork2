class CreateJoinTableComponentTasks < ActiveRecord::Migration[5.1]
  def change
    create_join_table :components, :tasks do |t|
      # t.index [:component_id, :task_id]
      # t.index [:task_id, :component_id]
    end
  end
end
