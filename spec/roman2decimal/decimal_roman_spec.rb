require 'roman2decimal/decimal_roman'

describe DecimalRoman do
  
  describe '.main_method' do 
    context 'has a valid number' do
      let(:decimal_number) { 3999 }
      let(:roman_number) {'MMMCMXCIX'}
      subject {DecimalRoman.main_method(decimal_number)}
      it 'returns the convertion' do
        expect(subject).to eq(roman_number)
      end
    end
  end
end