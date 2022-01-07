# frozen_string_literal: true

require 'rails_helper'
require 'prime'

RSpec.describe EulerFunctionsHelper, type: :helper do
  describe 'Summing the numbers that are have factors of 3 or 5 below a given number.' do
    it 'given 0, returns 0' do
      expect(helper.euler_one(0)).to eq(0)
    end

    it 'given 1, returns 1' do
      expect(helper.euler_one(1)).to eq(0)
    end

    it 'given 3, returns 0' do
      expect(helper.euler_one(3)).to eq(0)
    end

    it 'given 4, returns 3' do
      expect(helper.euler_one(4)).to eq(3)
    end

    it 'given 6, returns 8' do
      expect(helper.euler_one(6)).to eq(8)
    end
    it 'given 10, returns 23' do
      expect(helper.euler_one(10)).to eq(23)
    end
  end

  describe 'Summing the even numbers in the Fibbonaci sequence below a given number' do
    it 'given 0, returns 0' do
      expect(helper.euler_two(0)).to eq(0)
    end

    it 'given 1, returns 0' do
      expect(helper.euler_two(1)).to eq(0)
    end

    it 'given 2, returns 0' do
      expect(helper.euler_two(2)).to eq(0)
    end

    it 'given 3, returns 2' do
      expect(helper.euler_two(3)).to eq(2)
    end

    it 'given 4, returns 2' do
      expect(helper.euler_two(4)).to eq(2)
    end

    it 'given 5, returns 2' do
      expect(helper.euler_two(5)).to eq(2)
    end

    it 'given 6, returns 2' do
      expect(helper.euler_two(6)).to eq(2)
    end

    it 'given 7, returns 2' do
      expect(helper.euler_two(7)).to eq(2)
    end

    it 'given 8, returns 2' do
      expect(helper.euler_two(8)).to eq(2)
    end

    it 'given 9, returns 10' do
      expect(helper.euler_two(9)).to eq(10)
    end

    it 'given 100, returns 10' do
      expect(helper.euler_two(100)).to eq(2 + 8 + 34)
    end
  end

  describe 'finding the largest prime factor for a very large number' do
    it 'given 2, returns 2' do
      expect(helper.euler_three(2)).to eq(2)
    end

    it 'given 4, returns 2' do
      expect(helper.euler_three(4)).to eq(2)
    end

    it 'given 5, returns 5' do
      expect(helper.euler_three(5)).to eq(5)
    end

    it 'given 6, returns 3' do
      expect(helper.euler_three(6)).to eq(3)
    end

    it 'given 7, returns 7' do
      expect(helper.euler_three(7)).to eq(7)
    end

    it 'given 8, returns 2' do
      expect(helper.euler_three(8)).to eq(2)
    end

    it 'given 9, returns 3' do
      expect(helper.euler_three(9)).to eq(3)
    end

    it 'given 10, returns 5' do
      expect(helper.euler_three(10)).to eq(5)
    end

    it 'given 11, returns 11' do
      expect(helper.euler_three(11)).to eq(11)
    end

    it 'given 13195, returns 29' do
      expect(helper.euler_three(13_195)).to eq(29)
    end

    it 'given 21023, returns 21023' do
      expect(helper.euler_three(21_023)).to eq(21_023)
    end
    
    it 'given a ridculously high number...' do
      expect(helper. euler_three(600851475143)).to eq(6857)
    end
  end
end
