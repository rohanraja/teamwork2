require 'rails_helper'

RSpec.describe "testcases/edit", type: :view do
  before(:each) do
    @testcase = assign(:testcase, Testcase.create!(
      :title => "MyString",
      :description => "MyText"
    ))
  end

  it "renders the edit testcase form" do
    render

    assert_select "form[action=?][method=?]", testcase_path(@testcase), "post" do

      assert_select "input[name=?]", "testcase[title]"

      assert_select "textarea[name=?]", "testcase[description]"
    end
  end
end
