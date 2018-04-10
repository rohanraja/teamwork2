class TaskMembership < ApplicationRecord
  belongs_to :task
  belongs_to :subtask , :class_name => "Task"
end
