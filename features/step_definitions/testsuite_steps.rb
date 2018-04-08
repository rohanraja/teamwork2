
Given("that component has a test suite named {string}") do |string|
  @testsuite = @component.testsuites.create(:title => string)
end


Given("I have a testsuite titled {string}") do |string|
  @testsuite = Testsuite.create(:title => string)
end

Given("that testsuite has a testcase titled {string}") do |string|
  @testsuite.testcases.create(:title => string)
end

When("I visit the show page for that testsuite") do
  visit "/testsuites/#{@testsuite.id}"
end

When("I visit the edit page for that testsuite") do
  visit "/testsuites/#{@testsuite.id}/edit"
end
