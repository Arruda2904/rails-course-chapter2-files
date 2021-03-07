credentials ={
    "Gabriel" => "kate",
    "Bruna" => "branquinha",
    "Kate" => "racao"
}


def authenticator (username,password,users_list)
    users_list.each do |key,value|
        if password == value && username == key
            return "login: #{value} password: #{password}"
        end
    end
    "Credentials were incorrect"
end

puts "Welcome to the authenticator"
28.times {print "-"}
puts
puts "This program will take input from the user and compare password"
n=3

while n>0 do
    print "Username: "
    user_login = gets.chomp
    print "Password: "
    user_password = gets.chomp
    message_to_show = authenticator(user_login, user_password,credentials)
    puts message_to_show
    n -= 1
    if n==0
        puts "You exceeded the maximum attempts"
        break
    end
    puts "Press n to quit or any other key to continue"
    loop_key = gets.chomp
    if loop_key == 'n' || loop_key == 'N'
        n=0
    end
end