class Hamming
  class << self
    #signifies is class method
    #what are some instances where you would need a class method?

    def compute(str1, str2)
      if str1.length != str2.length
        raise ArgumentError.new("Different size strands")

      else
        difference = 0
        str1.length.times do |num|
          difference += (str1[num] <=> str2[num]).abs
        end
        return difference
      end
    end
  end
end
