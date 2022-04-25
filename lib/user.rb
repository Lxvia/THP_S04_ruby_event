require "pry"

class User
    attr_accessor :email, :age
    @@all_users = []

    def initialize(email_to_save, age_to_save)
        @email = email_to_save
        @age = age_to_save
        @@all_users << self
        puts "Email and age saved !"  
    end

    def self.all
        return @@all_users 
    end

    def self.find_by_email(email)
        @@all_users.each do |user|
            return user if user.email == email 
        end
    end

end

olivia = User.new("olivia@gmail.com", 24)
louis = User.new("louis@gmail.com", 26)
samu = User.new("samu@gmail.com", 25)
james = User.new("james@gmail.com", 26)

binding.pry
puts "End of file"