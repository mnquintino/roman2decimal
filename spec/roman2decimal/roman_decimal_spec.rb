require 'roman2decimal/roman_decimal'
# https://relishapp.com/rspec/rspec-expectations/v/3-9/docs/built-in-matchers

describe RomanDecimal do
  let(:input) {'MMM'}

  context '' do
    it '' do
      expect(actual).to be_truthy    # passes if actual is truthy (not nil or false)
      expect(actual).to be true      # passes if actual == true
      expect(actual).to be_falsey    # passes if actual is falsy (nil or false)
      expect(actual).to be false     # passes if actual == false
    end
    
  end
  context '.conversor' do
    it do
      expect { a += 1 }.to change { a }.by(1)

      
    end
  end
end