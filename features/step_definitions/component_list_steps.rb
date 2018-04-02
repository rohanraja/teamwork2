Given("I have an application with few simple components") do
  @app = create(:application, :with_components, comps: ["Comp_1", "Comp_2"])
end

When("I visit the component list page of the application") do
  appid = @app.id
  visit "/compList/#{appid}"
end

Then("I should see those simple components") do
  expect(page).to have_content("Comp_1")
  expect(page).to have_content("Comp_2")
end

