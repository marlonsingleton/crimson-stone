def mask_article(phrase, arr)
  arr.each do |word|
  	replacement = strike(word)
    phrase.gsub!(word, replacement) if phrase.include?(word)
  end
  phrase
end

def strike(str)
  "<strike>#{str}</strike>"
end
