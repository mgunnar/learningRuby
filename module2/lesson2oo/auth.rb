require 'bcrypt'

list_users = [
    {username:"Matheus", password:"pass"},
    {username:"Isadora", password:"pass2"},
    {username:"Helena", password:"pass3"}
]
 
def create_hash_digest(password)
  BCrypt::Password.create("my password")
end

def verify_hash_digest(password)
  BCrypt::Password.new("my password")
end

def create_secure_users(list_users)
    list_users.each do |user_record|
        user_record[:password] = create_hash_digest(user_record[:password])
    end
end

# This is just to test the methoeds of this class by showing the list of users with the encrypted passwords.
# output = create_secure_users(list_users) 
# puts output