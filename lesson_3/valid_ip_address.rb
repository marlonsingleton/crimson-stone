
def is_a_number?(num)
  num.chars.each do |character|
  return false if character.to_i.to_s != character
  end
  return true
end

def dot_separated_ip_address?(input_string)
  dot_separated_words = input_string.split(".")
  return false if dot_separated_words.length != 4
  while dot_separated_words.size > 0 do
    word = dot_separated_words.pop
    return false if !is_a_number?(word) || !(0..255).cover?(word.to_i)
  end
  return true
end

input_string = "255.255.255.0"

p dot_separated_ip_address?(input_string)
