require 'rails_helper'

RSpec.describe "testcases/show", type: :view do
  before(:each) do
    @testcase = assign(:testcase, Testcase.create!(
      :title => "Title",
      :description => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/MyText/)
  end
end
