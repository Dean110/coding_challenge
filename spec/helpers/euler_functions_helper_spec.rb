require 'rails_helper'

# Specs in this file have access to a helper object that includes
# the EulerFunctionsHelper. For example:
#
# describe EulerFunctionsHelper do
#   describe "string concat" do
#     it "concats two strings with spaces" do
#       expect(helper.concat_strings("this","that")).to eq("this that")
#     end
#   end
# end
RSpec.describe EulerFunctionsHelper, type: :helper do
  describe "Summing the numbers that are have factors of 3 or 5 below a given number." do
    
    it "given 0, returns 0" do
      expect(helper.euler_one 0).to eq(0)
    end

    it "given 1, returns 1" do
      expect(helper.euler_one 1).to eq(0)
    end
    
    it "given 3, returns 0" do
        expect(helper.euler_one 3).to eq(0)
    end

    it "given 4, returns 3" do
      expect(helper.euler_one 4).to eq(3)
    end

    it "given 6, returns 8" do
      expect(helper.euler_one 6).to eq(8)
    end
    it "given 10, returns 23" do
    expect(helper.euler_one 10).to eq(23)
    end
  end

  describe "Summing the even numbers in the Fibbonaci sequence below a given number" do
  
    it "given 0, returns 0" do
      expect(helper.euler_two 0).to eq(0)
    end

    it "given 1, returns 0" do
      expect(helper.euler_two 1).to eq(0)
    end

    it "given 2, returns 0" do
      expect(helper.euler_two 2).to eq(0)
    end

    it "given 3, returns 2" do
      expect(helper.euler_two 3).to eq(2)
    end

    it "given 4, returns 2" do
      expect(helper.euler_two 4).to eq(2)
    end

    it "given 5, returns 2" do
      expect(helper.euler_two 5).to eq(2)
    end

    it "given 6, returns 2" do
      expect(helper.euler_two 6).to eq(2)
    end

    it "given 7, returns 2" do
      expect(helper.euler_two 7).to eq(2)
    end

    it "given 8, returns 2" do
      expect(helper.euler_two 8).to eq(2)
    end

    it "given 9, returns 10" do
      expect(helper.euler_two 9).to eq(10)
    end
    
    it "given 100, returns 10" do
      expect(helper.euler_two 100).to eq(10)
    end
  end
end
