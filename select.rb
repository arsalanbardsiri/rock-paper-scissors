require_relative "ascii"

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

  def shoot_computer
    options = OPTIONS.keys.map { |key| key.to_s }
    @choice = options.sample
    puts "Computer chose: #{@choice.capitalize}"
    @choice
  end

  def win
    @score += 1
  end
end
