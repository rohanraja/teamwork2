
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

Then("I clear browser cookies") do
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
