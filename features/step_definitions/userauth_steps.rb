Given("I visit the users sign in page") do
  visit "/users/sign_in"
end

Given("I click {string}") do |string|
  if string == "Log In"
    find('input[name="commit"]').click
  end
end
