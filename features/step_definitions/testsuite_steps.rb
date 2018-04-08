
Given("that component has a test suite named {string}") do |string|
  @component.testsuite.create(:title => string)
end
