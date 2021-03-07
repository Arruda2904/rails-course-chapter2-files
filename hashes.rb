sample_hash = {'a' => 1,'b' => 2,'c' => 3}
puts sample_hash
another_hash = {a:1, b:2, c:3} # uses symbol as key
puts another_hash

another_hash.each do |key,value|
    puts "The class for key is #{key.class} and the value is #{value.class}"
end

another_hash[:d] = 4 # adds a new symbol with a key in my hash
another_hash[:e] = "teste"
another_hash[:c] = 9 # changes a hash value
puts another_hash

puts another_hash.select{|key, value| value.is_a?(String)} # selects only string values on hash, doenst affect original hash
another_hash.each{|key, value|another_hash.delete(key) if value.is_a?(String)} # deletes all string values in hash, affects original hash
puts another_hash

# aula 29 capítulo 2 tem reusmo de tudo isso explicando