class CreateTaskMemberships < ActiveRecord::Migration[5.1]
  def change
    create_table :task_memberships do |t|
      t.integer :task_id
      t.integer :subtask_id

      t.timestamps
    end
  end
end
