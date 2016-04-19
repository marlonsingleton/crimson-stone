
words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
          'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
          'flow', 'neon']
anagram_hash = {}
words.each { |word| 
            fixed = word.split("").sort.join
            if anagram_hash.has_key?(fixed)
              anagram_hash[fixed].push(word)
            else
              anagram_hash[fixed] = [word]
            end        
           }
p anagram_hash

