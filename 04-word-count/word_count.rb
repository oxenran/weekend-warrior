
def words(string)
  words_hash = Hash.new 0
  #I guess it initializes the hash key value to 0
  words_array = string.split
  words_array.each{|word| words_hash[word] += 1}
  words_hash
end
