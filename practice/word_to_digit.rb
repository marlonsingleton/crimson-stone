CONVERT = {"one" => 1, "two" => 2, "three" => 3, "four" => 4, "five" => 5, "six" => 6,
 "seven" => 7, "eight" => 8, "nine" => 9, "ten" => 10}

def word_to_digit(str)
  outcome = str.split.map do |word|
    if CONVERT[word] 
      word = CONVERT[word]
    elsif CONVERT[word[0..-2]]
      punc = word[-1]
      word = CONVERT[word[0..-2]]
      word = "#{word}#{punc}"
    else
      word
    end
  end
  outcome.join(" ")
end
