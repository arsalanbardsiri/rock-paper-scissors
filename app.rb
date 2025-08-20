require_relative "game_play"
require_relative "ascii"
puts "Welcome To The Game Of"
puts "#{R_P_S}"
puts "Choose game mode: '1' for 2-Player, '2' for vs Computer"
mode = gets.chomp
Game.new(vs_computer: mode == "2").run
