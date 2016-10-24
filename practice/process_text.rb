def process_text(arr)
  str = ""
  arr.each do |word|
    if str == ""
	    str = word.strip
    else
	    str = str + " " + word.strip
	  end
  end
  str
end
