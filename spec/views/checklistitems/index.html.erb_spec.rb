require 'rails_helper'

RSpec.describe "checklistitems/index", type: :view do
  before(:each) do
    assign(:checklistitems, [
      Checklistitem.create!(
        :title => "Title",
        :checklist => nil
      ),
      Checklistitem.create!(
        :title => "Title",
        :checklist => nil
      )
    ])
  end

  it "renders a list of checklistitems" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
