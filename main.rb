require_relative 'Player'
require_relative 'Question'

puts "Welcome to the Math game designed by Ruby"
puts "Please enter Player one's name"
print "Player 1: "
player1_name = gets.chomp
puts "Please enter Player two's name"
print "Player 2: "
player2_name = gets.chomp

player1 = Player.new(player1_name)
player2 = Player.new(player2_name)

which_player = 0

while (player1.alive? &&  player2.alive?) do

player = (which_player == 0) ? player1 : player2

question = Question.new

puts "-------------NEW TURN-------------"

puts "#{player.name}:#{question.print}" 

answer = gets.chomp.to_i

  if answer == question.answer

    puts "======================"
    puts "That is correct! YAYY!"
    puts "#{player1.name} #{player1.lives}/3 and #{player2.name} #{player2.lives}/3"
  else
    player.lives -= 1
    puts "======================"
    puts "Wrong. Learn to count"
    puts "#{player1.name} #{player1.lives}/3 and #{player2.name} #{player2.lives}/3"
  end 
end

if player1.lives == 0
   puts "***#{player2.name} wins with #{player2.lives}/3 lives***"
elsif player2.lives == 0
   puts "***#{player1.name} wins with #{player1.lives}/3 lives***"
end