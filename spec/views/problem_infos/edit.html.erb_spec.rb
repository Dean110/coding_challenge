require 'rails_helper'

RSpec.describe "problem_infos/edit", type: :view do
  before(:each) do
    @problem_info = assign(:problem_info, ProblemInfo.create!(
      key: "MyString",
      answer: "MyString",
      username: nil
    ))
  end

  it "renders the edit problem_info form" do
    render

    assert_select "form[action=?][method=?]", problem_info_path(@problem_info), "post" do

      assert_select "input[name=?]", "problem_info[key]"

      assert_select "input[name=?]", "problem_info[answer]"

      assert_select "input[name=?]", "problem_info[username_id]"
    end
  end
end
