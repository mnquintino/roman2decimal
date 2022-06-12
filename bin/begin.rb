#!/usr/bin/env ruby
require_relative '../lib/roman2decimal/roman_decimal'
require_relative '../lib/roman2decimal/validation'
require_relative '../lib/roman2decimal/decimal_roman'

puts "Bem vindo ao conversor Roman2Decimal"
loop do
  puts "\nEntre com o número em algoritmos romanos:"
  input = gets.chomp.upcase
  if Validation.valid_order(input)
    RomanDecimal.valid(input)
    break
  else
    puts "Poxa, o valor está incorreto. Tente novamente"
  end
end