#Rock paper scissors

#begin
#   puts "pick one: (p, r, s):"
#    player_inpus = gets.chomp.downcase
# end until CHOICES.keys.include?(player_input)
# choices.keys.sample

require 'pry'

OPTIONS = {'r' => 'Rock', 'p' => 'Paper', 's' => 'Scissors'}
puts "Welcome to Paper, Rock, Scissors!"

#winning conditions paper > rock, scissors > paper, rock > scissors
#losing conditions paper > scissors, scissors > rock, rock > paper
def display_win_message(winning_choice)
  case winning_choice
  when 'p'
    puts "Paper covers Rock!"
  when 'r'
    puts "Rock smashes Scissors"
  when 's'
    puts "Scissors cuts Paper!"
  end
end

#User picks
loop do
  begin
    puts "Pick one: (p, r, s)"
    player_choice = gets.chomp.downcase
  end until OPTIONS.keys.include?(player_choice)

#Comp makes a choice
  computer_choice = OPTIONS.keys.sample
  puts computer_choice


  if computer_choice == player_choice
    puts "It's a tie!"
  elsif (computer_choice == 'r' && player_choice =='p') || (computer_choice =='p' && player_choice == 's') || (computer_choice == 's' && player_choice == 'r')
    display_win_message(player_choice)
    puts "You win!"
  else
    puts "The computer won!"
  end

end


