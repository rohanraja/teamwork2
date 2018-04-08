require 'rails_helper'

RSpec.describe "functionalities/show", type: :view do
  before(:each) do
    @functionality = assign(:functionality, Functionality.create!(
      :title => "Title",
      :component => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(//)
  end
end
