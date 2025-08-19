require "./select.rb"
POSSIBILITIES = { "rock" => "scissors", "scissors" => "paper", "paper" => "rock" }
VS = "
 _   _  ___   
( ) ( )(  _`\ 
| | | || (_(_)
| | | |`\__ \ 
| \_/ |( )_) |
`\___/'`\____)
"
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
    result = "Tie!"
  elsif POSSIBILITIES[player_1_choice] == player_2_choice
    result = "Player 1 wins"
    player_1.win
  else
    result = "Player 2 wins"
    player_2.win
  end
  puts "
  Player1:
  #{OPTIONS[player_1_choice.to_sym]} 
  #{VS}
  Player 2: 
  #{OPTIONS[player_2_choice.to_sym]}

  #{result}
  
  Player1 Score: #{player_1.score}, Player 2 Score: #{player_2.score}"
end
