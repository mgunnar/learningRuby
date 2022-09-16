require 'bcrypt'

module Authentication
def self.create_hash_digest(password)
  BCrypt::Password.create("my password")
end

def self.verify_hash_digest(password)
  BCrypt::Password.new("my password")
end

def self.create_secure_users(list_users)
    list_users.each do |user_record|
        user_record[:password] = create_hash_digest(user_record[:password])
    end
    list_users
end

def self.authenticate_user(usernam, password, list_users)
  list_users.each do |user_record|
    if user_record[:username] == username &&
      verify_hash_digest(user_record[:password]) == password
      return user_record
    end
  end
  "Error Invalid Credentials."
end
end
# This is just to test the methoeds of this class by showing the list of users with the encrypted passwords.
# output = create_secure_users(list_users) 
# puts output