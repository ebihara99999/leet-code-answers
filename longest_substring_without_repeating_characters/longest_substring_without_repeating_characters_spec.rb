# frozen_string_literal: true

require './longest_substring_without_repeating_characters.rb'

describe 'length_of_longest_substring' do
  subject { length_of_longest_substring(string) }

  context do
    let(:string) { "abcabcbb" }
    it { is_expected.to eq 3 }
  end

  context do
    let(:string) { "bbbbb" }
    it { is_expected.to eq 1 }
  end

  context do
    let(:string) { "pwwkew" }
    it { is_expected.to eq 3 }
  end

  context do
    let(:string) {" "}
    it { is_expected.to eq 1 }
  end
end
