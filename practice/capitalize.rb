def capitalizes(the_array)
  the_array.map { |word| word.capitalize }.join(', ')
end

phrase = ['hello', 'this', 'should', 'be', 'capitalized']

p capitalizes(phrase)
