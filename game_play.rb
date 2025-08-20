require_relative "select"
require_relative "ascii"
POSSIBILITIES = { "rock" => "scissors", "scissors" => "paper", "paper" => "rock" }

=begin
Value system
R > S
S > P
P > R

TODO:
Therefore need a score tracking system
=end

def check_winner(player_1, player_2, vs_computer: false)
  puts "Player 1:"
  player_1_choice = player_1.shoot

  if vs_computer
    puts "Computer:"
    player_2_choice = player_2.shoot_computer
  else
    puts "Player 2:"
    player_2_choice = player_2.shoot
  end

  if player_1_choice == player_2_choice
    result = "Tie!"
  elsif POSSIBILITIES[player_1_choice] == player_2_choice
    result = "Player 1 wins"
    player_1.win
  else
    result = vs_computer ? "Computer wins" : "Player 2 wins"
    player_2.win
  end

  puts "
  Player1:
  #{OPTIONS[player_1_choice.to_sym]} 
  #{VS}
  #{vs_computer ? "Computer" : "Player 2"}:
  #{OPTIONS[player_2_choice.to_sym]}

  #{result}
  
  Player1 Score: #{player_1.score}, #{vs_computer ? "Computer" : "Player 2"} Score: #{player_2.score}"
end
