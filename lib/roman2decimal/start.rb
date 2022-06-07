class Start

  valid = [I = 1, V = 5, X = 10, L = 50, C = 100, D = 500, M = 1000]

  def self.conversor(input)
    output = 0
    input.each_with_index do |letra, index|
      case letra
      when "M"
        output += M
      when "D"
        output += D
      when "C"
        if input[index + 1] == "M"
          output -= C
        else
          output += C
        end
      when "L"
        output += L
      when "X"
        if input[index + 1] == "L" || input[index + 1] == "C"
          output -= X
        else
          output += X
        end
      when "V"
        output += V
      when "I"
        if input[index + 1] == "V" || input[index + 1] == "X"
          output -= I
        else
          output += I
        end
      else
        output
      end
    end
    puts "O resultado é #{output}"
  end
end
