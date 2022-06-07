#!/usr/bin/env ruby
require_relative '../lib/roman2decimal/start'
require_relative '../lib/roman2decimal/validation'

puts "Bem vindo ao conversor Roman2Decimal"
loop do
  puts "\nEntre com o número em algoritmos romanos:"
  input = gets.chomp.upcase
  div_algorismo = input.split("")
  if Validation.valid_order(input)
    puts "O número romano #{input} será convertido, aguarde..."
    Start.conversor(div_algorismo)
    puts 
  break
  else
    puts "Poxa, o valor está incorreto. Tente novamente"
  end
end