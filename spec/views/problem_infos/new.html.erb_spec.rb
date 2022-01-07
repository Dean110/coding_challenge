require 'rails_helper'

RSpec.describe "problem_infos/new", type: :view do
  before(:each) do
    assign(:problem_info, ProblemInfo.new(
      key: "MyString",
      answer: "MyString",
      username: nil
    ))
  end

  it "renders new problem_info form" do
    render

    assert_select "form[action=?][method=?]", problem_infos_path, "post" do

      assert_select "input[name=?]", "problem_info[key]"

      assert_select "input[name=?]", "problem_info[answer]"

      assert_select "input[name=?]", "problem_info[username_id]"
    end
  end
end
