# frozen_string_literal: true

require './string_to_integer.rb'

describe 'my_atoi' do
  subject { my_atoi(string) }

  context do
    let(:string) { "42" }
    it { is_expected.to eq 42 }
  end

  context do
    let(:string) { "   -42" }
    it { is_expected.to eq -42 }
  end

  context do
    let(:string) { "4193 with words" }
    it { is_expected.to eq 4193 }
  end

  context do
    let(:string) { "words and 987" }
    it { is_expected.to eq 0 }
  end

  context do
    let(:string) { "-91283472332" }
    it { is_expected.to eq -2147483648 }
  end
end
