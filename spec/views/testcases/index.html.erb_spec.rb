require 'rails_helper'

RSpec.describe "testcases/index", type: :view do
  before(:each) do
    assign(:testcases, [
      Testcase.create!(
        :title => "Title",
        :description => "MyText"
      ),
      Testcase.create!(
        :title => "Title",
        :description => "MyText"
      )
    ])
  end

  it "renders a list of testcases" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
