module Crud
  require 'bcrypt'
  
  users = [
            { username: "mashrur", password: "password1" },
            { username: "jack", password: "password2" },
            { username: "arya", password: "password3" },
            { username: "jonshow", password: "password4" },
            { username: "heisenberg", password: "password5" }
          ]
  
  def self.create_hash_digest(password) 
    BCrypt::Password.create(password)
  end
  
  def self.verify_hash_digest(password) 
    BCrypt::Password.new(password)
  end
  
  def self.create_secure_users(list_of_users)
    list_of_users.each do |user_record|
      user_record[:password] = create_hash_digest(user_record[:password])
    end
    list_of_users
  end

  def self.authenticate_user(username,password,list_of_users)
    list_of_users.each do |user_record|
      if user_record[:username] == username && verify_hash_digest(user_record[:password]) == password
        return user_record
      end
    end
    "Credentials were incorrect"
  end
end

=begin
puts users
80.times{print "-"}
puts 
puts create_secure_users(users)
80.times{print "-"}
puts
puts "User data"
puts authenticate_user("mashrur","password1",users)
=end
