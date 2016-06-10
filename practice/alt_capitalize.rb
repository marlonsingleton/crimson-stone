def capitalizes(the_array)
  cap_words = []
  the_array.each do |word|
    cap_words << word[0].upcase + word[1..word.length]
  end
  cap_words.join(', ')
end

phrase = ['hello', 'this', 'should', 'be', 'capitalized']

p capitalizes(phrase)
