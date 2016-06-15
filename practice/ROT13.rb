def rotd13(string)
  num_result = string.split.map do |word|
    word.chars.map do |char|
      if ("A".."M").cover?(char) || ("a".."m").cover?(char)
        char.ord + 13
      elsif ("N".."Z").cover?(char) || ("n".."z").cover?(char)
        char.ord - 13
      else
        char
      end
    end
  end
  char_result = num_result.map do |num_array| 
    num_array.map { |num| num.chr }.join
  end
  char_result.join(" ")
end

phrase = "Hello the ROTD13 cipher will be applied to this phrase."

p phrase
p rotd13(phrase)
