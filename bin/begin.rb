#!/usr/bin/env ruby
require_relative '../lib/roman2decimal/roman_decimal'
require_relative '../lib/roman2decimal/validation'
require_relative '../lib/roman2decimal/history'
require 'colorize'

puts "Bem vindo ao Conversor".colorize(:color => :light_cyan, :background => :black).bold
loop do
  puts "\nEscolha qual conversão deseja fazer: \n1 : Romano-Decimal\n2 : Decimal-Romano \n(Exit para sair)".colorize(:light_cyan)
  choise = gets.chomp.upcase
  case choise
  when 'EXIT'
    if File.empty?("out.txt")
      puts "\nVocê não realizou nenhuma conversão."
    else
      puts "\nVocê solicitou as seguintes conversões:\n\n"
      puts History.read
      History.delete
    end
    puts "\nObrigada, até mais!".colorize(:color => :light_cyan, :background => :black).bold
    break
  when '1'
    loop do
      puts "\nEntre com o número em algoritmos romanos:".colorize(:light_cyan)
      input = gets.chomp.upcase
      if Validation.valid_order(input)
        output = RomanDecimal.valid(input)
        puts "Conversão de Romano para Decimal:".colorize(:green).bold
        puts "Romano:" + input.colorize(:green)
        puts "Decimal: #{output}.".colorize(:green).bold
        text = "Romano #{input} - Decimal #{output} \n"
        History.create_and_write(text)
        break
      else
        puts "Poxa, o valor está incorreto. Tente novamente".colorize(:red)
      end
    end
  when '2'
    loop do
      puts "\nEntre com o número (entre 1 e 3999):".colorize(:light_cyan)
      input = gets.chomp.to_i
      if input == 0 || input > 3999
        puts "Poxa, o valor está incorreto. Tente novamente".colorize(:red) 
      else
        output = DecimalRoman.main_method(input)
        puts "Conversão de Decimal para Romano:".colorize(:green).bold
        puts "Decimal: #{input}".colorize(:black).bold
        puts "Romano: #{output}".colorize(:green).bold
        text = "Decimal #{input} - Romano #{output} \n"
        History.create_and_write(text)
        break
      end
    end
  else
      puts "Poxa, o valor está incorreto. Tente novamente".colorize(:red)
  end
end