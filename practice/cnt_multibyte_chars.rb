def count_multibyte_char(str)
  count = 0
  str.each_char do |char| 
	  if char.bytesize > 1
		  count += 1 
	  end
  end
  count
end
