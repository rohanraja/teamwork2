require 'rails_helper'

RSpec.describe "components/index", type: :view do
  before(:each) do
    assign(:components, [
      Component.create!(
        :name => "Name",
        :application => nil
      ),
      Component.create!(
        :name => "Name",
        :application => nil
      )
    ])
  end

  it "renders a list of components" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
