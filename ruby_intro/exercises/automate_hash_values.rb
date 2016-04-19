
contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"],
              ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]

contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}
hash_keys = [:email, :address, :phone]
i = 0
j = 0
contacts.each { |name, array| 
                hash_keys.each { |item|
                contacts[name][item] = contact_data[i][j]
                j += 1
                if j > 2
                  i += 1
                  j = 0
                end
         }
}

#contacts["Joe Smith"][:email] = contact_data[0][0]
#contacts["Joe Smith"][:address] = contact_data[0][1]
#contacts["Joe Smith"][:phone] = contact_data[0][2]
#contacts["Sally Johnson"][:email] = contact_data[1][0]
#contacts["Sally Johnson"][:address] = contact_data[1][1]
#contacts["Sally Johnson"][:phone] = contact_data[1][2]
puts contacts
