Given("that task has a subtask titled {string}") do |string|
  @subtask = @task.subtasks.create(:title => string)
end

When("I visit the show page for that subtask") do
  visit "/tasks/#{@subtask.id}"
end
