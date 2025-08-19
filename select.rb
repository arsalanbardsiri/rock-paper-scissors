#Ascii art from https://gist.github.com/wynand1004/b5c521ea8392e9c6bfe101b025c39abe
THE_ROCK = "
    _______
---'   ____)
      (_____)
      (_____)
      (____)
---.__(___)
"
THE_PAPER = "
    _______
---'   ____)____
          ______)
          _______)
         _______)
---.__________)
"
THE_SCISSORS = "
    _______
---'   ____)____
          ______)
       __________)
      (____)
---.__(___)
"
OPTIONS = { :rock => THE_ROCK, :paper => THE_PAPER, :scissors => THE_SCISSORS }

class Game
  attr_accessor :choice, :score

  def initialize
    self.choice = ""
    self.score = 0
  end

  def shoot
    options = OPTIONS.keys.map { |key| key.to_s }

    @choice = ""
    while !options.include?(@choice)
      puts "Please choose from, 'Rock, Paper, Scissors'"
      @choice = gets.chomp.downcase
    end
    @choice
  end

  def win
    @score += 1
  end
end
