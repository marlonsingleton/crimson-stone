word = "cat"

def helper(word)
  letter_array = []
  copy_cat = word
  word.length.times do
    starts = 0
    ends = 0
    loop do
      letter_array << copy_cat[starts..ends]
      ends += 1
      break if ends == copy_cat.length
    end
    copy_cat.delete!(word[0])
  end
  letter_array
end

p helper(word)
