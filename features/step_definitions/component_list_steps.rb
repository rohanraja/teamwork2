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

Then("I should see a create components button") do
  # expect(page).to have_selector(:link_or_button, 'Create Component')
  expect(page).to have_selector("#createCompBtn")
end

When("I click on Create Component button") do
  find('#createCompBtn').click
end

Then("I should be present on the Create Component page of that app") do
  appid = @app.id
  expect(page.current_path).to eq "/newComp/#{appid}"
  expect(page).to have_content("Create Component")
  expect(page).to have_content("#{@app.name}")
end


