#pvp.rb
require "./shoot.rb"

puts "Player 1:"

p1 = Choose.new
p1_choice = p1.shoot

puts "Player 2:"

p2 = Choose.new
p2_choice = p2.shoot
