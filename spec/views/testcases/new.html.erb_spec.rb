require 'rails_helper'

RSpec.describe "testcases/new", type: :view do
  before(:each) do
    assign(:testcase, Testcase.new(
      :title => "MyString",
      :description => "MyText"
    ))
  end

  it "renders new testcase form" do
    render

    assert_select "form[action=?][method=?]", testcases_path, "post" do

      assert_select "input[name=?]", "testcase[title]"

      assert_select "textarea[name=?]", "testcase[description]"
    end
  end
end
