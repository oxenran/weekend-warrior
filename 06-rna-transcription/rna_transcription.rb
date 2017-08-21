#RNA complement Test
class Complement
  DNA_TRANSCRIPTION = {
    "G" => "C",
    "C" => "G",
    "A" => "U",
    "T" => "A"
  }
  RNA_TRANSCRIPTION = {
    "G" => "C",
    "C" => "G",
    "A" => "T",
    "U" => "A"
  }

  class << self

    def complimentary_sequence(type_transcription, sequence)
      complimentary_sequence = ""
      sequence.each_char do |nitrogen_base|
        raise_error?(type_transcription, nitrogen_base)
        complimentary_sequence << type_transcription[nitrogen_base]
      end
      complimentary_sequence
    end

    def raise_error?(type_transcription, letter)
      #this was a pain for me to figure out logistically
      raise ArgumentError.new("Wrong Base Type") if !type_transcription.keys.include?(letter)
    end

    def of_dna(sequence)
      complimentary_sequence(DNA_TRANSCRIPTION, sequence)
    end

    def of_rna(sequence)
      complimentary_sequence(RNA_TRANSCRIPTION, sequence)
    end

  end
end
