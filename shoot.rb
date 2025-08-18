OPTIONS = ["rock","paper","scissors"]

class Choose
    attr_accessor :choice

    def initialize
        self.choice = ""
    end

    def shoot
        puts "Choose from \"Rock, Paper, Scissors\": "
        @choice = gets.chomp.downcase
        
    end
end
