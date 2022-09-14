def line(lineSize,char)
    lineSize.times{ print char} 
    puts ""
end



line(60,'=')
puts "Welcome to the authenticator."
line(60,'=')

puts "This programa will take input from the user and compare password"
puts "If password is correct you will get back the user object"

users =    [{username:"user1" ,password: "pass1"},
            {username:"user2" ,password: "pass2"},
            {username:"user3" , password: "pass3"}]

def authenticateUser(username,password,userList)
    
    userList.each do |userRecord|
        if userRecord[:username] == username && userRecord[:password] == password
            return userRecord
            break
        else
            return "Invalid credentials."
        end
    end
end

attempt = 1
    while attempt < 4
        puts "Username:"
        username = gets.chomp
        puts "Password:"
        password = gets.chomp
        auth = authenticateUser(username,password,users)
        puts auth
        puts "Press n do quit or any other key to continue: "
        input = gets.chomp.downcase
        break if input == "n"
        attempt+=1
    end






# authenticate("user1","pass1")