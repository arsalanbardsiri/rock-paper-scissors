#pvp.rb
require "./shoot.rb"

puts "Player 1:"
p1 = Choose.new
p1_choice = p1.shoot

puts "Player 2:"
p2 = Choose.new
p2_choice = p2.shoot

=begin
Value system
R > S
S > P
P > R

TODO:
Therefore need a score tracking system
=end
possibilities = { "rock" => "scissors", "scissors" => "paper", "paper" => "rock" }

def check_winner(p1_choice, p2_choice)
  if p1_choice == p2_choice
    pp "tie"
  elsif possibilities[p1_choice] == p2_choice
    pp "p1 wins"
  else
    pp "p2 wins"
  end
end
