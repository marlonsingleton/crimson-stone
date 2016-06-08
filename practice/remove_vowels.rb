
list = %w('green', 'yellow', 'black', 'white')

def no_vowels(list)
  final_array = []
  list.each do |word|
    results = word.chars.select { |char| 'aeiou'.include?(char) == false }
    final_array << results.join
  end
  final_array.join(' ')
end

p no_vowels(list)
