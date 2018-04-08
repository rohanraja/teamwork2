require 'rails_helper'

RSpec.describe "tasks/edit", type: :view do
  before(:each) do
    @task = assign(:task, Task.create!(
      :title => "MyString",
      :description => "MyText",
      :user => nil,
      :priority => "",
      :status => "MyString",
      :category => "MyString"
    ))
  end

  it "renders the edit task form" do
    render

    assert_select "form[action=?][method=?]", task_path(@task), "post" do

      assert_select "input[name=?]", "task[title]"

      assert_select "textarea[name=?]", "task[description]"

      assert_select "input[name=?]", "task[user_id]"

      assert_select "input[name=?]", "task[priority]"

      assert_select "input[name=?]", "task[status]"

      assert_select "input[name=?]", "task[category]"
    end
  end
end
