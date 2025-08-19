require "./select.rb"
puts "WELCOME To The Game of 
    _______               _______                     _______
---'   ____)         ---'    ____)____            ---'   ____)____
      (_____)                   ______)                     ______)
      (_____)                  _______)                 __________)
      (____)                  _______)                  (____)
---.__(___)           ---.__________)             ---.__(___)
Rock                  Paper                       Scissors"
require "./game_play.rb"
player_1 = Game.new
player_2 = Game.new

game_on = true
while game_on
  check_winner(player_1, player_2)

  puts "Play again? Enter 'P' to play or 'Q' to quit:"
  replay = gets.chomp.downcase

  while replay != "q" && replay != "p"
    puts "Please Enter 'P' to play or 'Q' to quit:'"
    replay = gets.chomp.downcase
  end

  replay == "q" ? game_on = false : game_on = true
end

puts "Thanks for playing!"
puts "Final Scores:"
puts "Player 1: #{player_1.score}"
puts "Player 2: #{player_2.score}"
