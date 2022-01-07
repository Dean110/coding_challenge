require 'rails_helper'

RSpec.describe "problem_infos/show", type: :view do
  before(:each) do
    @problem_info = assign(:problem_info, ProblemInfo.create!(
      key: "Key",
      answer: "Answer",
      username: nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Key/)
    expect(rendered).to match(/Answer/)
    expect(rendered).to match(//)
  end
end
