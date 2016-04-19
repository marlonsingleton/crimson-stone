ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }

total = 0

ages.each_value do |element|
  total += element
end

p total
