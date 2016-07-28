def staggered_case(str)
  new_str, chg_case = ["", true]
  str.chars.each do |char|
    chg_case ? new_str += char.upcase : new_str += char.downcase
    chg_case == true ? chg_case = false : chg_case = true
  end
  new_str
end

phrase = "I Love Launch School!"
p staggered_case(phrase)
