
Given("that component has a test suite named {string}") do |string|
  @component.testsuites.create(:title => string)
end
