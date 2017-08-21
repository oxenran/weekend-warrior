#given a string representing Roman numerals, return Arabic value
#I did not anticipate that this would be such a pain in the @$$
#I spent three hours doing this.... at least I've got MONDAY OFF!!!!!!
#I bet there's a gem that does this
class Roman
  NUMERALS = {
    "I" => 1,
    "V" => 5,
    "X" => 10,
    "L" => 50,
    "C" => 100,
    "D" => 500,
    "M" => 1000
  }
  SUBTRACTORS = {
    "CM" => 900,
    "CD" => 400,
    "XC" => 90,
    "XL" => 40,
    "IX" => 9,
    "IV" => 4
  }
  class << self

    def stringy_thingies(string, hash)
      total = 0
      hash.each do |key, value|
        if string.include?(key)
          num_times = string.scan(/(?=#{key})/).count
          string.slice!"#{key}"
          total += value * num_times
        end
      end
      total
    end

    def roman_or_arabic(string)
      if string.each_char.all?{ |char| ("0".."9").cover?(char)}
        return "arabic"
      elsif string.each_char.all?{ |char| (NUMERALS.keys).include?(char)}
        return "roman"
      else
        raise ArgumentError.new("Unknown Characters")
      end
    end

    def roman_to_arabic(string)
      #Convert numerals to integer
      value = stringy_thingies(string, SUBTRACTORS) + stringy_thingies(string, NUMERALS)
      return value
    end

    def arabic_to_roman(integer)
      "You tried to trick me by giving Arabic numbers, wise guy."
    end

    def reverter(string)
      if roman_or_arabic(string) == "arabic"
        arabic_to_roman(string)
      elsif roman_or_arabic(string) == "roman"
        roman_to_arabic(string)
      end
    end


  end
end
