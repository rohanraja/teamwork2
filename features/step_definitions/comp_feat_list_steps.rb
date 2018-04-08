Given("that application has a functionality named {string}") do |string|
  @app.components.first.functionalities.create(:title => string)
end

