
When("I click submit") do
  find('input[name="commit"]').click
end

Then("I should see {word} on that page") do |s|
  expect(page).to have_content(s)
end

Then("I should see {string} on that page") do |s|
  expect(page).to have_content(s)
end

Given("I fill in {string} as the {word} {word}") do |string, mod, attr|
    fill_in :name => "#{mod}[#{attr}]", with: string
end
