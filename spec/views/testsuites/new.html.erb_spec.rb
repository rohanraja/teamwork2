require 'rails_helper'

RSpec.describe "testsuites/new", type: :view do
  before(:each) do
    assign(:testsuite, Testsuite.new(
      :title => "MyString"
    ))
  end

  it "renders new testsuite form" do
    render

    assert_select "form[action=?][method=?]", testsuites_path, "post" do

      assert_select "input[name=?]", "testsuite[title]"
    end
  end
end
