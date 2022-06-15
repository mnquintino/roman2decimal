require 'roman2decimal/validation'
#rspec spec/roman2decimal/validation_spec.rb
describe Validation do
 
  describe '.valid_order' do
    context 'when a right input is taken' do
      let(:input) { "MMMCMXCIX" }

      it 'returns true' do
        expect(Validation.valid_order(input)).to be_truthy
      end
    end
    context 'when a wrong input is taken' do
      let(:input) { "MIXI" }

      it 'returns false' do
        expect(Validation.valid_order(input)).to be_falsey
      end
    end
  end
end