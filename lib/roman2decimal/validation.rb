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
        return true 
      when "D"
        if input_hash[n] == "M"
          return false
        else
          true
        end
      when "C"
        return true
      when "L"
        if input_hash[n] == "M" || input_hash[n] == "D"
          return false
        else
          true
        end
      when "X"
        if input_hash[n] == "M" || input_hash[n] == "D"
          return false
        else
          true
        end
      when "V"
        if input_hash[n] == "M" || input_hash[n] == "D" || input_hash[n] == "C" || input_hash[n] == "L" || input_hash[n] == "X"
          return false
        else
          true
        end
      when "I"
        if input_hash[n] == "M" || input_hash[n] == "D" || input_hash[n] == "C" || input_hash[n] == "L"
          return false
        else
          true
        end
      else
        return false
      end
    end
  end

  def self.valid_unic(input)
    unic.each do |letra|
        return false if input.count(letra) > one

        true
    end
  end

  def self.valid_repetition(input)
    groups.each do |letra|
      return false if input.count(letra) > four

      true
    end
  end

  def self.valid_groups(input)
    
  end
end