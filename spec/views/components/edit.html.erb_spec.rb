require 'rails_helper'

RSpec.describe "components/edit", type: :view do
  before(:each) do
    @component = assign(:component, Component.create!(
      :name => "MyString",
      :application => nil
    ))
  end

  it "renders the edit component form" do
    render

    assert_select "form[action=?][method=?]", component_path(@component), "post" do

      assert_select "input[name=?]", "component[name]"

      assert_select "input[name=?]", "component[application_id]"
    end
  end
end
