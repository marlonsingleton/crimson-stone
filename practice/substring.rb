def substrings(str)
  cnt, sliced_array = [0, []]
  str.length.times do
    str.chars.each_index { |dex| sliced_array << str.slice(cnt..dex) if dex >= cnt }
    cnt += 1
  end
  sliced_array
end

p substrings('abcde')
