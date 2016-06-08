
def reverse(string)
  new_array = []
  n = -1
  string.chars.length.times do
    new_array << string.chars[n]
    n -= 1
  end
  new_array.join
end

p reverse('nolraM')
