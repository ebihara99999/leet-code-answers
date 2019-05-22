# frozen_string_literal: true

require './two_sum.rb'

describe 'two_sum' do
  subject { two_sum(nums, target) }

  context do
    let(:nums) { [2, 7, 11, 15] }
    let(:target) { 9 }
    it { is_expected.to eq [0, 1] }
  end

  context do
    let(:nums) { [2, 7, 11, 15] }
    let(:target) { 26 }
    it { is_expected.to eq [2, 3] }
  end

  context do
    let(:nums) { [3, 3] }
    let(:target) { 6 }
    it { is_expected.to eq [0, 1] }
  end

  context do
    let(:nums) { [3,2,4] }
    let(:target) { 6 }
    it { is_expected.to eq [1, 2] }
  end
end
