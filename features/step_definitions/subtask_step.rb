Given("that task has a subtask titled {string}") do |string|
  @subtask = @task.subtasks.create(:title => string)
end
