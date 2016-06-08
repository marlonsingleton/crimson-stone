word = 'M(a(r))lon'

def balancer(word)
  if word.count('(') == word.count(')')
    total = 0
    word.chars.each do |char|
      total += 1 if char == '('
      total += -1 if char == ')'
      return false if total < 0
    end
    return true
  else
    return false
  end
end

p balancer(word)
