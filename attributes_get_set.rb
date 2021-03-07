#require_relative "crud"
#Dava pra incluir o crud dentro do objeto Student e usar todos os metodos definidos em Crud,só tirar o
#self que ta nas funções em Crud que aí para de ser método de modulo e vira de objeto
class Student
  #include Crud
    attr_accessor :first_name, :last_name, :email, :username, :password # tbm tem attr_reader e attr_writer
   
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
   
  mashrur = Student.new("Mashrur", "Hossain", "mashrur1", "mashrur@example.com",
                        "password1")
  john = Student.new("John", "Doe", "john1", "john1@example.com",
                        "password2")
  puts mashrur
  puts john
  mashrur.last_name = john.last_name
  puts "Mashrur is altered"
  puts mashrur