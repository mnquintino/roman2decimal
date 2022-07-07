require 'conversor/roman_decimal'
# https://relishapp.com/rspec/rspec-expectations/v/3-9/docs/built-in-matchers
module Conversor
  describe RomanDecimal do

    describe '.valid' do
      context 'when the input is valid' do
        let(:input) { 'CD' }
        let(:output) { 400 }
        subject {RomanDecimal.valid(input)}
        it 'returns the output' do
          expect(subject).to eq(output)
        end
      end
    end
    
    describe '.create_roman' do
      context 'when the input is M' do
        let(:input) { ["M"] }
        subject {RomanDecimal.create_roman(input)}
        it 'returns 1000' do
          expect(subject).to eq(1000)
        end
      end
      context 'when the input is C' do
        let(:input) { ["C"] }
        subject {RomanDecimal.create_roman(input)}
        it 'returns 100' do
          expect(subject).to eq(100)
        end
      end
      context 'when the input is D' do
        let(:input) { ["D"] }
        subject {RomanDecimal.create_roman(input)}
        it 'returns 500' do
          expect(subject).to eq(500)
        end
      end
      context 'when the input is L' do
        let(:input) { ["L"] }
        subject {RomanDecimal.create_roman(input)}
        it 'returns 50' do
          expect(subject).to eq(50)
        end
      end
      context 'when the input is X' do
        let(:input) { ["X"] }
        subject {RomanDecimal.create_roman(input)}
        it 'returns 10' do
          expect(subject).to eq(10)
        end
      end
      context 'when the input is V' do
        let(:input) { ["V"] }
        subject {RomanDecimal.create_roman(input)}
        it 'returns 5' do
          expect(subject).to eq(5)
        end
      end
      context 'when the input is I' do
        let(:input) { ["I"] }
        subject {RomanDecimal.create_roman(input)}
        it 'returns 1' do
          expect(subject).to eq(1)
        end
      end
      context 'when the input is IX' do
        let(:input) { ["X", "I"] }
        subject {RomanDecimal.create_roman(input)}
        it 'returns 11' do
          expect(subject).to eq(11)
        end
      end
    end
  end
end