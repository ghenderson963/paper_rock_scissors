#Rock paper scissors

#> christmas_bin[rand(christmas_bin.size)]
# computer = p and you = s you win
#computer = s and you = s tie!
#computer = r and you = s computer win
#computer = p and you = p tie!
#computer = s and you = p computer win
#computer = r and you = p you win
# computer = p and you = r computer win
#computer = s and you = r you win
#computer = r and you = r tie!

#CHOICES = {'p' => 'Paper', 'r' => 'Rock', 's' => 'Scissors'}

#begin
#   puts "pick one: (p, r, s):"
#    player_inpus = gets.chomp.downcase
# end until CHOICES.keys.include?(player_input)
# choices.keys.sample

require 'pry'

def rand_choice
  options = ["p", "s", "r"]
  computer = options[rand(options.size)]
end

def who_wins(computer, you)
  if (computer == "p") && (you == "s")
    puts "Scissors cut Rock"
    puts "You win!"
    puts ""
  elsif (computer == "s") && (you == "s")
    puts "Scissors and Scissors tie"
    puts "It's a tie!"
    puts ""
  elsif (computer =="r") && (you == "s")
    puts "Rock crushes Scissors"
    puts "Computer wins!"
    puts ""
  elsif (computer == "p") && (you == "p")
    puts "Paper and Paper "
    puts "It's a tie!"
  elsif (computer == "s") && (you == "p")
    puts "Scissors cut Paper"
    puts "Computer wins!"
  elsif (computer == "r")  && (you == "p")
    puts "Paper wraps Rock"
    puts "You win!"
  elsif (computer == "p") && (you == "r")
    puts "Paper wraps rock"
    puts "Computer wins!"
  elsif (computer == "s") && (you == "r")
    puts "Rock crushes Scissors"
    puts "You win!"
  else (computer == "r") && (you == "r")
    puts "Rock and Rock"
    puts "It's a tie!"
  end
end

again = "y"
while again == "y"
  puts "Let's play Paper Rock Scissors"
  puts "Pick one P/R/S."
  you = gets.chomp.downcase
  computer = rand_choice()
  puts "The computer picked #{computer} and you picked #{you}"
  who_wins(computer, you)
  puts "Play again?"
  again = gets.chomp.downcase
end








