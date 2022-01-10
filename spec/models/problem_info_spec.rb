require 'rails_helper'

RSpec.describe ProblemInfo, type: :model do
  describe "on start" do
    let(:key){ "10" }
      let(:answer) { "23" }
      let(:username) { "johndoe" }
      
    it "can take values for key, answer and username" do
      
      expect(problem_infos.key).to eq("10")
      expect(problem_infos.answer).to eq("23")
      expect(problem_infos.username).to eq("johndoe")
    end
  end
end
