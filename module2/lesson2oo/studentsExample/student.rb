require_relative 'Authentication'

class Student
  include Authentication
    attr_accessor :first_name, :last_name, :email, :username, :password
   
    def initialize(firstname, lastname, username, email, password)
      @first_name = firstname
      @last_name = lastname
      @username = username
      @email = email
      @password = password
    end
   
    def to_s
      "First name: #{@first_name}, Last name: #{@last_name}, Username: #{@username},
                    email address: #{@email}"
    end
   
  end
   
  matheus = Student.new("Matheus", "Gunnar", "matheus1", "matheus@example.com",
                        "password1")
  john = Student.new("John", "Doe", "john1", "john1@example.com",
                        "password2")
  # puts matheus
  # puts john
  # matheus.last_name = john.last_name
  # puts "matheus is altered" 
  
  hashed_pass = matheus.create_hash_digest(matheus.password)
  puts hashed_pass
