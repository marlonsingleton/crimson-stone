def rot13(messages)
  num_result = messages.map do |message|
    num_arrays = message.split.map do |word|
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
    num_arrays.map do |conv| 
      new_word = conv.map { |num| num.chr }
      new_word.join
    end
  end
  num_result.join(" ")
end

phrase = ["Hello this is the ROTD13 cipher.", "It will be applied to this phrase now."]

p phrase.join(" ")
p rot13(phrase)
