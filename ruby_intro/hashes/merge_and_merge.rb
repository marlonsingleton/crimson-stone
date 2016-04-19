
small_count = {"string1"=>"one", "string2"=>"two"}
big_count = {"string3"=>"three", "string4"=>"four", "string5"=>"five" }
puts "
small_count = {\"string1\"=>\"one\", \"string2\"=>\"two\"}
big_count = {\"string3\"=>\"three\", \"string4\"=>\"four\", \"string5\"=>\"five\" }\n
small_count.merge(big_count) merges the hashes without mutating the original value.\n"
p small_count.merge(big_count)
puts "
small_count after merge method\n"
p small_count
puts "
small_count.merge!(big_count) merges the hashes and mutates the caller.\n"
p small_count.merge!(big_count)
puts "
small_count after merge! method\n"
p small_count
puts "\n"
