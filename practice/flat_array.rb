my_array = [1, 2, [3, [4, 5], 6], 7]

def flat_array(array)
  array.each_with_object([]) do |element, flattened|
    flattened.push *(element.is_a?(Array) ? flat_array(element) : element) # allows flattened.push(3, 4, 5, 6)
    flattened # [1, 2, 3, 4, 5, 6, 7] 
  end
end

p flat_array(my_array) 

