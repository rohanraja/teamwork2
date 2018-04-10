Then("I should see the current user email on that page") do
  expect(page).to have_content("#{@user.email}")
end


When("I select the other user as the assigned user to the task") do
  select "#{@user2.email}", :from => "task_user_id"
end

Then("I should see the other user email on that page") do
  expect(page).to have_content("#{@user2.email}")
end

Given("I have a task titled {string}") do |string|
  @task = Task.create(:title => string, :user_id => @user.id)
end

Given("I have a task titled {string} with cost {int} days") do |string, int|
  @task = Task.create(:title => string, :user_id => @user.id, :estimated_cost => int)
end

Given("that component has a task named {string}") do |string|
  @task = @component.tasks.create(:title => string, :user_id => @user.id)
end

When("I visit the show page for that task") do
  visit "/tasks/#{@task.id}"
end
