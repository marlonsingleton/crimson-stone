ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }

under_100 = ages.select do |_, value|
  value < 100
end

p under_100
