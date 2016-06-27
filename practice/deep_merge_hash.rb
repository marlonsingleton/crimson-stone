
hash_array = [{a: {w: 0}, b: "2", c: "3"}, {a: {q: 1}}, {aa: {bb: {cc: "4"}}}, {aa: {bb: {ee: "4" }}}]

new_hash = {}
test_array = []
hash_array.each do |hashes|
  if test_array.include?(hashes.keys[0])
    if hashes.values[0].values[0].class == Hash
      merge_this = hashes.values[0].values[0]
      new_hash[hashes.keys[0]].values[0].merge!(merge_this)
    else
      new_hash[hashes.keys[0]].merge!(hashes.values[0])
    end
  else
    new_hash.merge!(hashes)
  end
  test_array << hashes.keys[0]
end

p new_hash # returns {:a=>{:w=>0, :q=>1}, :b=>"2", :c=>"3", :aa=>{:bb=>{:cc=>"4", :ee=>"4"}}}

