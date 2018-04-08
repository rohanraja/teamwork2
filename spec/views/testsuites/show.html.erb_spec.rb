require 'rails_helper'

RSpec.describe "testsuites/show", type: :view do
  before(:each) do
    @testsuite = assign(:testsuite, Testsuite.create!(
      :title => "Title"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
  end
end
