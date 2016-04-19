statement = "The Flintstones Rock"

char_hash = {}

statement.chars.each do |char| 
  char_hash[char] = statement.count(char)
end

p char_hash
