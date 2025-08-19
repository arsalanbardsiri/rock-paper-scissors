#pvp.rb
require "./shoot.rb"
POSSIBILITIES = { "rock" => "scissors", "scissors" => "paper", "paper" => "rock" }
VS = "
 _   _  ___   
( ) ( )(  _`\ 
| | | || (_(_)
| | | |`\__ \ 
| \_/ |( )_) |
`\___/'`\____)
"
player_1 = Game.new
player_2 = Game.new

=begin
Value system
R > S
S > P
P > R

TODO:
Therefore need a score tracking system
=end

def check_winner(player_1, player_2)
  puts "Player 1:"
  player_1_choice = player_1.shoot
  puts "Player 2:"
  player_2_choice = player_2.shoot
  if player_1_choice == player_2_choice
    pp "Tie!"
  elsif POSSIBILITIES[player_1_choice] == player_2_choice
    pp "Player 1 wins"
    player_1.win
  else
    pp "Player 2 wins"
    player_2.win
  end
  puts "
  #{OPTIONS[player_1_choice.to_sym]} 
  #{VS} 
  #{OPTIONS[player_2_choice.to_sym]}
  "

  pp "P1 Score: #{player_1.score}, P2 Score: #{player_2.score}"
end

check_winner(player_1, player_2)
