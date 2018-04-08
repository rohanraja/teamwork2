Then("I should see the current user email on that page") do
  expect(page).to have_content("#{@user.email}")
end


When("I select the other user as the assigned user to the task") do
  select "#{@user2.email}", :from => "task_user_id"
end

Then("I should see the other user email on that page") do
  expect(page).to have_content("#{@user2.email}")
end

