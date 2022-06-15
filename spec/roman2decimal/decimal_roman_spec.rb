require 'roman2decimal/decimal_roman'

describe DecimalRoman do
  context 'has a valid number' do
    let(:output) { 3999 }
    it 'returns the convertion' do
      expect(DecimalRoman.main_method(output)).to eq(MMMCMXCIX)
    end
  end
end