module Conversor
  class Validation

    unic = ["V", "L", "D"]
    groups = ["I", "X", "C", "M"]
    one = 1
    three = 3
    four = 4

    def self.valid_order(input)
      input_hash = input.split("")
      input_hash.each_with_index do |letra, index|
        n = index + 1
        case letra
        when "M"
          return false if !valid_m(input) 
        when "D"
          return false if !valid_d(input, n)
        when "C"
          return false if !valid_c(input, n)
        when "L"
          return false if !valid_l(input, n)
        when "X"
          return false if !valid_x(input, n)
        when "V"
          return false if !valid_v(input, n)
        when "I"
          return false if !valid_i(input, n)
        else
          return false
        end
      end
    end

    def self.valid_m(input)
      if input.scan("MMMM").size >= 1
        false
      elsif input.count("M") > 4
        false
      else
        true
      end
    end

    def self.valid_d(input, n)
      if input.index("M") == n
        false
      elsif input.count("D") > 1
        false
      else
        true
      end
    end

    def self.valid_c(input, n)
      if input.count("C") > 4 || input.scan("CCCC").size > 0
        false
      elsif (input.index("M") == n || input.index("D") == n) && (input.index("X") == (n + 1)) && input.count("C") > 2
        false
      elsif (input.index("M") == n || input.index("D") == n) && input.count("C") > 1
        false
      elsif input.scan("CMM").size > 0 || input.scan("CMMM").size > 0
        false
      else
        true
      end
    end

    def self.valid_l(input, n)
      if input.index("M") == n || input.index("D") == n
        false
      elsif input.count("L") > 1
        false
      else
        true
      end
    end

    def self.valid_x(input, n)
      if input.index("M") == n || input.index("D") == n
        false
      elsif input.scan("XXXX").size > 1
        false
      elsif input.count("X") > 4
        false
      else
        true
      end
    end

    def self.valid_v(input, n)
      if input.index("M") == n || input.index("D") == n || input.index("C") == n || input.index("L") == n || input.index("X") == n
        false
      elsif input.count("V") > 1
        false
      else
        true
      end
    end

    def self.valid_i(input, n)
      if input.index("M") == n || input.index("D") == n || input.index("C") == n || input.index("L") == n || input.scan("IIII").size >= 1 || input.count("I") >= 3
        false
      elsif (input.index("V") == n || input.index("X") == n) && input.count("I") > 1
        false
      else
        true
      end
    end
  end
end