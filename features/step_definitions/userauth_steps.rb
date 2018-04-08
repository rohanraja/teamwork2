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
  browser = Capybara.current_session.driver.browser
  if browser.respond_to?(:clear_cookies)
    # Rack::MockSession
    browser.clear_cookies
  elsif browser.respond_to?(:manage) and browser.manage.respond_to?(:delete_all_cookies)
    # Selenium::WebDriver
    browser.manage.delete_all_cookies
  else
    raise "Don't know how to clear cookies. Weird driver?"
  end
end

Given ("I am a new, authenticated user") do
  email = 'testing2@man.net2'
  password = 'secretpass2'
  @user = User.new(:email => email, :password => password, :password_confirmation => password)
  @user.save!

  visit '/users/sign_in'
  fill_in "user_email", :with => email
  fill_in "user_password", :with => password
  click_button "Log in"

end

Given ("there exists another user") do
  email = 'seconduser@teamwork.com'
  password = 'secretpass'
  @user2 = User.new(:email => email, :password => password, :password_confirmation => password)
  @user2.save!
end
