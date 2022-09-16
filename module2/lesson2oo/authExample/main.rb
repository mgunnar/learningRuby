require_relative 'auth'

list_users_00 = [
    {username:"John", password:"pass"},
    {username:"Peter", password:"pass2"},
    {username:"Mary", password:"pass3"}
]

encrypted_users = Authentication.create_secure_users(list_users_00)
puts encrypted_users