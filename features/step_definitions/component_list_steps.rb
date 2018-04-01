class Helpers
  def self.CreateComponent(name)
    Component.new(:name => name)
  end

  def self.CreateApplication(compNames)
    comps = []
    compNames.each do |comp|
      comps << CreateComponent(comp)
    end
    Application.new comps
  end
end

Given("I have an application with few simple components") do
  @app = Helpers.CreateApplication(["Comp1", "Comp2"])
end

When("I visit the component list page of the application") do
  pending
end

Then("I should see those simple components") do
  pending
end

