
def caps_if_ten_or_more(word)
  if word.length > 10
    puts word.upcase
  else
    puts word.downcase
  end
end

caps_if_ten_or_more("not > TEN")
caps_if_ten_or_more("more than ten")



  
