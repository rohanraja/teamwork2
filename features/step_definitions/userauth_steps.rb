Given("I visit the users sign {word} page") do |w|
  visit "/users/sign_#{w}"
end

Given("I click {string} to submit") do |string|
  find('input[name="commit"]').click
end
