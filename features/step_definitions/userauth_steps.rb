Given("I visit the users sign {word} page") do |w|
  visit "/users/sign_#{w}"
end

Given("I visit the application list page") do
  visit "/applications"
end

Given("I click {string} to submit") do |string|
  find('input[name="commit"]').click
end


Then("I should be on the login page") do
  expect(page.current_path).to eq "/users/sign_in"
end

Given ("I am not signed in") do
  current_driver = Capybara.current_driver
  begin
    Capybara.current_driver = :rack_test
    page.driver.submit :delete, "/users/sign_out", {}
  ensure
    Capybara.current_driver = current_driver
  end
end

Given ("I am a new, authenticated user") do
  email = 'testing@man.net'
  password = 'secretpass'
  User.new(:email => email, :password => password, :password_confirmation => password).save!

  visit '/users/sign_in'
  fill_in "user_email", :with => email
  fill_in "user_password", :with => password
  click_button "Log in"

end

