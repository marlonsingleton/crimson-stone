phrase_arr = ["Enter a noun: ", "Enter a verb: ", "Enter an adjective: ", "Enter an adverb: "]
ans = []
phrase_arr.each do |phrase|
  print phrase
  ans << gets.chomp
end
ans.shuffle!
puts ""
puts "Do you #{ans[0]} your #{ans[1]} #{ans[2]} #{ans[3]}? That's hilarious!"
