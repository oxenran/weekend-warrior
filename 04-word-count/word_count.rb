
def words(string)
  words_hash = Hash.new 0
  #what the heck? ^^^ Why does this work?
  #I guess it initializes the hash key value to 0
  words_array = string.split

  words_array.each do |word|
    words_hash[word] += 1
  end
  
  words_hash
end
