Then("I should see the current user email on that page") do
  expect(page).to have_content("#{@user.email}")
end
