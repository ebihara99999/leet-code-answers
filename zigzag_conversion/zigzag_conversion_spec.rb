# frozen_string_literal: true

require './zigzag_conversion.rb'

describe 'convert' do
  subject { convert(string, num_rows) }

  context do
    let(:string) { "PAYPALISHIRING" }
    let(:num_rows) { 3 }
    it { is_expected.to eq 'PAHNAPLSIIGYIR' }
  end

  context do
    let(:string) { "PAYPALISHIRING" }
    let(:num_rows) { 4 }
    it { is_expected.to eq 'PINALSIGYAHRPI' }
  end
end
