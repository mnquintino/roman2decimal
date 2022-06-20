require 'roman2decimal/roman_decimal'
# https://relishapp.com/rspec/rspec-expectations/v/3-9/docs/built-in-matchers

describe RomanDecimal do

  describe '.valid' do
    context 'when the input is valid' do
      let(:input) { 'MMMCMXC' }
      let(:output) { 3990 }
      subject {RomanDecimal.valid(input)}
      it 'returns the output' do
        expect(subject).to eq(output)
      end
    end
  end
  
  describe '.conversor' do
    context 'when the input is valid' do
      let(:input) { ["M"] }
      let(:output) { 0 }
      subject {RomanDecimal.conversor(input)}
      it 'change the output value by 3999' do
        expect{ output += 1000 }.to change {output}.by(1000)
      end
    end
  end

  # context '' do
  #   it '' do
  #     expect(actual).to be_truthy    # passes if actual is truthy (not nil or false)
  #     expect(actual).to be true      # passes if actual == true
  #     expect(actual).to be_falsey    # passes if actual is falsy (nil or false)
  #     expect(actual).to be false     # passes if actual == false
  #   end
    
  # end
  # context '.conversor' do
  #   it do
  #     expect { a += 1 }.to change { a }.by(1)

      
  #   end
  # end
end