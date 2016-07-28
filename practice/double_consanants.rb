def double_consonants(str)
  bad_chrs = str.chars.grep(/[aeiou0-9]/i).join # vowels/digits
  bad_chrs += str.chars.grep(/[\W]/).join # non-word chars
  str.chars.map { |chr| bad_chrs.include?(chr) ? chr : chr * 2 }.join
end

string = "!*HEElloo-45Every1."
p double_consonants(string)
