require 'rails_helper'

RSpec.describe "problem_infos/index", type: :view do
  before(:each) do
    assign(:problem_infos, [
      ProblemInfo.create!(
        key: "Key",
        answer: "Answer",
        username: nil
      ),
      ProblemInfo.create!(
        key: "Key",
        answer: "Answer",
        username: nil
      )
    ])
  end

  it "renders a list of problem_infos" do
    render
    assert_select "tr>td", text: "Key".to_s, count: 2
    assert_select "tr>td", text: "Answer".to_s, count: 2
    assert_select "tr>td", text: nil.to_s, count: 2
  end
end
