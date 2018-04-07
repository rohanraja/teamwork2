Given("I have an application with few simple components") do
  @app = create(:application, :with_components, comps: ["Comp_1", "Comp_2"])
  @app.components.where(:name => "Comp_1").first.update(:description => "Some good description of the first component")
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

When("I click on Create Component button") do
  find("a", :text=>"New Component").click
end

Then("I should see a text input for component name") do
  expect(page).to have_selector("#compName")
end


Then("I should be present on the component list page of that app") do
  expect(page.current_path).to eq "/applications/#{@app.id}/components"
end

When("I click on the name of one of the components") do
  find("a", :text=>"Comp_1").click
end

Then("I click on {word} component") do |w|
  find("a", :text=>w).click
end


Then("I should be on the component viewer page") do
  compId = Component.where(:name => "Comp_1").first.id
  expect(page.current_path).to eq "/applications/#{@app.id}/components/#{compId}"
end

Then("I should see the name of the component") do
  expect(page).to have_content("Comp_1")
  expect(page).to_not have_content("Comp_2")
end


Then("I should see the description of the component") do
  expect(page).to have_content("Some good description of the first component")
end


