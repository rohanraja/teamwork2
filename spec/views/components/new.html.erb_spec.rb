require 'rails_helper'

RSpec.describe "components/new", type: :view do
  before(:each) do
    assign(:component, Component.new(
      :name => "MyString",
      :application => nil
    ))
  end

  it "renders new component form" do
    render

    assert_select "form[action=?][method=?]", components_path, "post" do

      assert_select "input[name=?]", "component[name]"

      assert_select "input[name=?]", "component[application_id]"
    end
  end
end
