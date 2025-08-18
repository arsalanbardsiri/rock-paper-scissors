#shoot.rb
OPTIONS = ["rock", "paper", "scissors"]

class Choose
  attr_accessor :choice

  def initialize
    self.choice = ""

  end

  def shoot
    while !OPTIONS.include?(@choice)
      puts "Please please choose from, 'Rock, Paper, Scissors'"
      @choice = gets.chomp.downcase
    end
  end
end
