require 'rails_helper'

RSpec.describe "checklistitems/show", type: :view do
  before(:each) do
    @checklistitem = assign(:checklistitem, Checklistitem.create!(
      :title => "Title",
      :checklist => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(//)
  end
end
