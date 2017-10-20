<<<<<<< HEAD
#write class Alouette
class Alouette
  class << self

    #three methods lines_for_verse, verse, and sing

    #lines_for verse generates the "et" parts
    #return an array of strings, no repeats
    def lines_for_verse(verse)
      verse_array = []
      verse_changes = ["la tête", "le bec", "les yeux", "le cou", "les ailes", "les pattes", "la queue", "le dos"]
      while verse >= 0
        verse_array << "Et #{verse_changes[verse]}!"
        verse -= 1
      end
      verse_array
    end

    #will build requested verse and return a string
    def verse(num)

      next_string = "Je te plumerai "
      finishing_string = "Alouette!\nAlouette!\nA-a-a-ah"

      #build the verse here
      verse = ""

      2.times do
        verse_changes = ["la tête", "le bec", "les yeux", "le cou", "les ailes","les pattes", "la queue", "le dos"]
        verse << "#{next_string}#{verse_changes[num]}.\n"
      end



      lines_for_verse(num).each do |line|
        2.times do
          verse << "#{line}\n"
        end
      end


      verse << finishing_string
    end

    #will build entire song formatted as allouette_lyrics.txt
    def sing
      refrain = "Alouette, gentille alouette,\nAlouette, je te plumerai."

      num = 0
      whole_darn_song = ""
      until num > 7 do
        whole_darn_song << "#{refrain}\n\n"
        whole_darn_song << "#{verse(num)}\n\n"
        num += 1
      end
      whole_darn_song << "#{refrain}"
    end

=======
class Alouette
  def self.lines_for_verse(verse_num)
  end

  def self.verse(verse_num)
  end

  def self.sing
>>>>>>> ada-c8/master
  end
end
