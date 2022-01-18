class RomanNumerals

  ROMAN_NUMBERS = {
    1000 => "M",  
     900 => "CM",  
     500 => "D",  
     400 => "CD",
     100 => "C",  
      90 => "XC",  
      50 => "L",  
      40 => "XL",  
      10 => "X",  
        9 => "IX",  
        5 => "V",  
        4 => "IV",  
        1 => "I",  
  }

  
  def self.convert(arabic_number)
    return "0" if arabic_number == 0

    roman_number = ""
    ROMAN_NUMBERS.each do |value, roman|
      roman_number << roman*(arabic_number / value)
      arabic_number = arabic_number % value
    end

    roman_number
  end
end