require 'rails_helper'

RSpec.describe "applications/index", type: :view do
  before(:each) do
    assign(:applications, [
      Application.create!(
        :name => "Name"
      ),
      Application.create!(
        :name => "Name"
      )
    ])
  end

  it "renders a list of applications" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
