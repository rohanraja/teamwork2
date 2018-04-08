require 'rails_helper'

RSpec.describe "testsuites/edit", type: :view do
  before(:each) do
    @testsuite = assign(:testsuite, Testsuite.create!(
      :title => "MyString"
    ))
  end

  it "renders the edit testsuite form" do
    render

    assert_select "form[action=?][method=?]", testsuite_path(@testsuite), "post" do

      assert_select "input[name=?]", "testsuite[title]"
    end
  end
end
