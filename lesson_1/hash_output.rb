
hash1 = {shoes: "nike", "hat" => "adidas", :hoodie => true}
hash2 = {"hat" => "adidas", :shoes => "nike", hoodie: true}

puts "Two hashes with different order, different syntax...against an equality test."
p hash1
p hash2
if hash1 == hash2
  puts "These hashes are the same!"
else
  puts "These hashes are not the same!"
end
