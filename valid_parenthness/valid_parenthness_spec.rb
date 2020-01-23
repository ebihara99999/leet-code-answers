require './string_to_integer.rb'

describe 'is_valid' do
  subject { is_valid(string) }

  context do
    let(:string) { "" }
    it { is_expected.to eq true }
  end

  context do
    let(:string) { "()" }
    it { is_expected.to eq true }
  end

  context do
    let(:string) { "()[]{}" }
    it { is_expected.to eq true }
  end

  context do
    let(:string) { "(]" }
    it { is_expected.to eq false }
  end

  context do
    let(:string) { "([)]" }
    it { is_expected.to eq false }
  end

  context do
    let(:string) { "{[]}" }
    it { is_expected.to eq true }
  end
end
