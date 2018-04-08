Given("that task has a checklist named {string}") do |string|
  @checklist = @task.checklists.create(:title => string)
end

Given("I have a checklist named {string}") do |string|
  @checklist = Checklist.create(:title => string)
end


Given("I that checklist has item titled {string}") do |string|
  @checklist.checklistitems.create(:title => string)
end

When("I visit the show page for that checklist") do
  visit "/checklists/#{@checklist.id}"
end

When("I visit the edit page for that checklist") do
  visit "/checklists/#{@checklist.id}/edit"
end
