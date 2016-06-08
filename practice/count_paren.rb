word = 'M))a(r)lon'

def balancer(word)
  count1 = word.count('(')
  count2 = word.count(')')
  p (count1 + count2).even?
end

balancer(word)
