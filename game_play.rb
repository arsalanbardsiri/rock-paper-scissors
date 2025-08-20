#game_play.rb
require_relative "select"
require_relative "ascii"

=begin
Value system
R > S
S > P
P > R

TODO:
Therefore need a score tracking system
=end
POSSIBILITIES = { "rock" => "scissors", "scissors" => "paper", "paper" => "rock" }

class Game
  attr_accessor :player_1, :player_2, :vs_computer

  def initialize(vs_computer: false)
    #code
    @player_1 = Select.new
    @player_2 = Select.new
    @vs_computer = vs_computer
  end

  def run
    game_on = true
    while game_on
      game_play
      game_on = replay?
    end
    final_result
  end

  def game_play
    puts "Player 1:"
    player_1_choice = @player_1.shoot

    puts vs_computer ? "Computer:" : "Player 2:"
    player_2_choice = vs_computer ? @player_2.shoot_computer : @player_2.shoot

    evaluate_choices(player_1_choice, player_2_choice)
  end

  def evaluate_choices(player_1_choice, player_2_choice)
    if player_1_choice == player_2_choice
      result = "Tie!"
    elsif POSSIBILITIES[player_1_choice] == player_2_choice
      result = "Player 1 wins"
      player_1.win
    else
      result = vs_computer ? "Computer wins" : "Player 2 wins"
      player_2.win
    end
    puts "#{result}"
    puts "Player 1 #{OPTIONS[player_1_choice.to_sym]} "
    puts "Score of Playler 1: #{@player_1.score}"
    puts "#{VS}"
    puts "Player 2 #{OPTIONS[player_1_choice.to_sym]}"
    puts "Score of #{vs_computer ? "Computer" : "Player 2"}: #{@player_2.score}"
  end

  def replay?
    puts "Play again? Enter 'P' to play or 'Q' to quit:"
    replay = gets.chomp.downcase
    replay == "p"
  end

  def final_result
    #code
    puts "Thanks for playing!"
    puts "Final Scores:"
    puts "Player 1: #{@player_1.score}"
    puts "#{vs_computer ? "Computer" : "Player 2"}: #{@player_2.score}"
  end
end
