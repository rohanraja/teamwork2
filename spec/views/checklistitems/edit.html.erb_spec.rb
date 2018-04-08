require 'rails_helper'

RSpec.describe "checklistitems/edit", type: :view do
  before(:each) do
    @checklistitem = assign(:checklistitem, Checklistitem.create!(
      :title => "MyString",
      :checklist => nil
    ))
  end

  it "renders the edit checklistitem form" do
    render

    assert_select "form[action=?][method=?]", checklistitem_path(@checklistitem), "post" do

      assert_select "input[name=?]", "checklistitem[title]"

      assert_select "input[name=?]", "checklistitem[checklist_id]"
    end
  end
end
