require_relative "select"
require_relative "ascii"
puts "WELCOME To The Game of #{R_P_S}"
require_relative "game_play"

puts "Choose game mode: '1' for 2-Player, '2' for vs Computer"
mode = gets.chomp
vs_computer = (mode == "2")

player_1 = Select.new
player_2 = Select.new

game_on = true
while game_on
  check_winner(player_1, player_2, vs_computer: vs_computer)

  puts "Play again? Enter 'P' to play or 'Q' to quit:"
  replay = gets.chomp.downcase

  while replay != "q" && replay != "p"
    puts "Please Enter 'P' to play or 'Q' to quit:'"
    replay = gets.chomp.downcase
  end

  game_on = replay != "q"
end

puts "Thanks for playing!"
puts "Final Scores:"
puts "Player 1: #{player_1.score}"
puts "#{vs_computer ? "Computer" : "Player 2"}: #{player_2.score}"
