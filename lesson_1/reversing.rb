
def reverse(item)
  rev_array = []
item_array = item.chars
  while item_array.length > 0 do
    rev_array << item_array[-1]
    item_array.pop
  end
p rev_array.join
end
  
reverse("Marlon")



