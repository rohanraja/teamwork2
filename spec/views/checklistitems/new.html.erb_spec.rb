require 'rails_helper'

RSpec.describe "checklistitems/new", type: :view do
  before(:each) do
    assign(:checklistitem, Checklistitem.new(
      :title => "MyString",
      :checklist => nil
    ))
  end

  it "renders new checklistitem form" do
    render

    assert_select "form[action=?][method=?]", checklistitems_path, "post" do

      assert_select "input[name=?]", "checklistitem[title]"

      assert_select "input[name=?]", "checklistitem[checklist_id]"
    end
  end
end
