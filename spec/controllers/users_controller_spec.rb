require 'rails_helper'

RSpec.describe UsersController, type: :controller do
  describe "on start" do
    it "can take in a value for username" do
      let(:username) {"johndoe"}
      expect(user.username).to eq("johndoe")
    end
  end
end