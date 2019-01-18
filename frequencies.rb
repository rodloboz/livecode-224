def frequencies(text)
  word_hash = {}
  # word_hash = Hash.new { |hash, key| hash[key] = 0  }
  word_hash.default = 0
  return word_hash if text == ""
  words = text.split
  # words.each do |word|
  #   if word_hash.key?(word)
  #     word_hash[word] += 1
  #   else
  #     word_hash[word] = 1
  #   end
  # end
  words.each { |word| word_hash[word] += 1 }
  word_hash
end

p frequencies("three or four")
