puts 10 == 10 #true
puts 10 == "10".to_f #true
puts 10.to_i === 10.0 #true eventough it's one integer and one float
puts 10.eql?(10.0) # false, it compares types
