Given("I have an application with few simple components") do
  @app = create(:application, :with_components, comps: ["Comp_1", "Comp_2"])
end

When("I visit the component list page of the application") do
  appid = @app.id
  # visit "/compList/#{appid}"
  visit "/applications/#{appid}/components"
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
  find("a", :text=>"New Component").click
end

Then("I should see a text input for component name") do
  expect(page).to have_selector("#compName")
end

When("I fill in TestComp as the new component name") do
    fill_in :name => "component[name]", with: 'TestComp'
end

When("I click submit") do
  find('input[name="commit"]').click
end

Then("I should be present on the component list page of that app") do
  expect(page.current_path).to eq "/applications/#{@app.id}/components"
end

Then("I should see TestComp on that page") do
  expect(page).to have_content("TestComp")
end

