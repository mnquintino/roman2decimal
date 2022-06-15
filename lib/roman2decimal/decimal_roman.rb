class DecimalRoman

  # attr_accessor :output

  # def initialize(output)
  #   @unid = ""
  #   @dez = ""
  #   @cent = ""
  #   @mil = ""
  #   @output = output
  # end
  
  def self.main_method(output)
    unid = ""
    dez = ""
    cent = ""
    mil = ""
    rest = output.digits

    thousand(rest[3], mil)
    hundred(rest[2], cent)
    ten(rest[1], dez)
    one(rest[0], unid)
    result = mil + cent + dez + unid
  end

  def self.thousand(rest, mil)
    if rest == nil
      mil
    elsif rest > 0
      three_times(mil, rest, "M")
    else
      mil
    end
  end

  def self.hundred(rest, cent)
    if rest == nil
      cent
    elsif rest < 4 
      three_times(cent, rest, "C")
    elsif rest == 4
      four_or_nine(cent, "CD")
    elsif (rest >= 5) && (rest < 9)
      five(cent, "D")
      rest = rest - 5
      three_times(cent, rest, "C")
    elsif rest == 9
      four_or_nine(cent, "CM")
    else
      cent
    end
  end

  def self.ten(rest, dez)
    if rest == nil
      dez
    elsif rest < 4 
      three_times(dez, rest, "X")
    elsif rest == 4
      four_or_nine(dez, "XL")
    elsif (rest >= 5) && (rest < 9)
      five(dez, "L")
      rest_temp = rest - 5
      three_times(dez, rest_temp, "X")
    elsif rest == 9
      four_or_nine(dez, "XC")
    else
      dez
    end
  end

  def self.one(rest, unid)
    if rest.nil?
      unid
    elsif rest < 4 
      three_times(unid, rest, "I")
    elsif rest == 4
      four_or_nine(unid, "IV")
    elsif (rest >= 5) && (rest < 9)
      five(unid, "V")
      rest = rest - 5
      three_times(unid, rest, "I")
    elsif rest == 9
      four_or_nine(unid, "XI")
    else
      unid
    end
  end

  def self.three_times(str, rest, letra)
    rest.times { str << letra}
  end

  def self.four_or_nine(str,letra)
    str << letra
  end

  def self.five(str, letra)
    str << letra
  end

end

# puts "Bem vindo ao conversor Decimal2Roman"
# loop do
#   puts "\nEntre com o número (o maior número possível é 3999):"
#   input = gets.chomp
#   case input
#   when /^\d+$/
#     output = input.to_i
#     # Realprov.new(output)
#     Realprov.main_method(output)
#     puts "ok"
#   break
#   else
#     puts "Poxa, o valor está incorreto. Tente novamente"
#   end
# end