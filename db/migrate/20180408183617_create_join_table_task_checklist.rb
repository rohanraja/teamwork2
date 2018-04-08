class CreateJoinTableTaskChecklist < ActiveRecord::Migration[5.1]
  def change
    create_join_table :tasks, :checklists do |t|
      # t.index [:task_id, :checklist_id]
      # t.index [:checklist_id, :task_id]
    end
  end
end
