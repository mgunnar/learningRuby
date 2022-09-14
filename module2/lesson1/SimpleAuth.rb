def line(lineSize,char)
    lineSize.times{ print char} 
    puts ""
end



line(60,'=')
puts "Welcome to the authenticator."
line(60,'=')

puts "This programa will take input from the user and compare password"
puts "If password is correct you will get back the user object"

# users =    ["user1" => "pass1",
#             "user2" => "pass2",
#             "user3" => "pass3"]

# def authenticate(user,password)
#     if (users.each{|k, v| myHash.select (k) if v.eql)
#     puts "user logged in"
#     else 
#         puts "wrong pass or user, try again."
# end

attempt = 1
while attempt < 4
    puts "Username:"
    username = gets.chomp
    puts "Password:"
    password = gets.chomp
    puts "Press n do quit or any other key to continue: "
    input = gets.chomp.downcase
        break if input == "n"
        attempt+=1
end






# authenticate("user1","pass1")