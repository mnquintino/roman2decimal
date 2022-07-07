require 'conversor/validation'
module Conversor
  describe Validation do
  
    describe '.valid_order' do
      context 'when a right input is taken' do
        let(:input) { "MMMCMXCIX" }
        subject { Validation.valid_order(input) }

        it 'returns true' do
          expect(subject).to be_truthy
        end
      end
      context 'when a wrong input is taken' do
        let(:input) { "IXV" }
        subject { Validation.valid_order(input) }

        it 'returns false' do
          expect(subject).to be_falsey
        end
      end
    end
  end
end