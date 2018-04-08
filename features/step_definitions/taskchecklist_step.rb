Given("that task has a checklist named {string}") do |string|
  @checklist = @task.checklists.create(:title => string)
end
