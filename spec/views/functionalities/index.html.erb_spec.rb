require 'rails_helper'

RSpec.describe "functionalities/index", type: :view do
  before(:each) do
    assign(:functionalities, [
      Functionality.create!(
        :title => "Title",
        :component => nil
      ),
      Functionality.create!(
        :title => "Title",
        :component => nil
      )
    ])
  end

  it "renders a list of functionalities" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
