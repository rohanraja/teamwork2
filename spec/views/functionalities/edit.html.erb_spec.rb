require 'rails_helper'

RSpec.describe "functionalities/edit", type: :view do
  before(:each) do
    @functionality = assign(:functionality, Functionality.create!(
      :title => "MyString",
      :component => nil
    ))
  end

  it "renders the edit functionality form" do
    render

    assert_select "form[action=?][method=?]", functionality_path(@functionality), "post" do

      assert_select "input[name=?]", "functionality[title]"

      assert_select "input[name=?]", "functionality[component_id]"
    end
  end
end
