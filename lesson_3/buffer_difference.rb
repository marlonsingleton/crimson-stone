buffer_methods = <<-MSG

def rolling_buffer1(buffer, max_buffer_size, new_element)
  buffer << new_element
  buffer.shift if buffer.size >= max_buffer_size
  buffer
end

def rolling_buffer2(input_array, max_buffer_size, new_element)
  buffer = input_array + [new_element]
  buffer.shift if buffer.size >= max_buffer_size
  buffer
end
MSG

puts buffer_methods
explanation = <<-MSG

The difference between the two buffer methods is that the buffer in the second method
is dependent of the input_array which doesn't change as new_element are added. However,
in the first method new_elements are added directly to the buffer whos size can be
effectively reduced by the shift method on the next line of code when the condition is
met.
MSG

puts explanation
