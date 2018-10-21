puts 'Player 1, Enter your move'
p1 = gets.chomp
puts 'Player 2, Enter your move'
p2 = gets.chomp
if ((p1 == 'rock') && (p2 == 'scissors')) ||
   ((p1 == 'scissors') && (p2 == 'paper')) ||
   ((p1 == 'paper') && (p2 == 'rock'))
  puts 'Player 1 wins'
elsif p1 == p2
  puts "It's a draw"
else
  puts 'Player 2 wins'
end