
munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

munsters.each_key do |key|
  if (0..17).include?(munsters[key]["age"])
    munsters[key]["age_group"] = "kid"
  elsif (18..64).include?(munsters[key]["age"])
    munsters[key]["age_group"] = "adult"
  elsif munsters[key]["age"] >= 65
    munsters[key]["age_group"] = "senior"
  end 
end

p munsters
