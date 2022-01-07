require 'rails_helper'

RSpec.describe ProblemInfosController, type: :controller do
  describe "on start" do
    it "can take values for key, answer and username" do
      let(:key){ "10" }
      let(:answer) { "23" }
      let(:username) { "johndoe" }
      
      expect(problem_infos.key).to eq("10")
      expect(problem_infos.answer).to eq("23")
      expect(problem_infos.user.username).to eq("johndoe")
    end
  end
end