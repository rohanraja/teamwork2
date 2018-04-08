require 'rails_helper'

RSpec.describe "testsuites/index", type: :view do
  before(:each) do
    assign(:testsuites, [
      Testsuite.create!(
        :title => "Title"
      ),
      Testsuite.create!(
        :title => "Title"
      )
    ])
  end

  it "renders a list of testsuites" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
  end
end
