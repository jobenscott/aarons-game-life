CHOICES = ['Rock', 'Paper', 'Scissors']
def game
puts "So you wanna challange me in rock paper scissors...Yes or No?"
start_game = gets.chomp.capitalize

if start_game == "N" || start_game == "No"
    puts "Fine...I'd win anyways."
  Process.exit
end

if start_game == "Y" || start_game == "Yes"


CHOICES[rand(3)]

puts "Rock, paper, or scissors? "
user_answer = gets.chomp.capitalize
computer_answer = CHOICES[rand(3)]

if user_answer == "Rock"
  puts "Your answer is Rock."
elsif user_answer == "Paper"
  puts "Your answer is Paper."
elsif user_answer == "Scissors"
  puts "Your answer is Scissors"
else 
  puts "That's not even an option."
  sleep 1
  puts "\nWould you like to try again, Yes or No?"
  go_back = gets.chomp.capitalize
    if go_back == "Y" || go_back == "Yes"
      game
end
  sleep 0.5
  print '.'
  sleep 0.5
  print '.'
  sleep 2
  print "Goodbye"
  puts ''
  puts ''
  Process.exit
end

puts "Our answer is"
print '.'
sleep 1
print '.'
sleep 1
print '.'
sleep 1

puts computer_answer
case [user_answer, computer_answer]
# This is if user chooses 'Rock'
when ["Rock", "Rock"]
  puts "It's a tie!"  
when ["Rock", "Paper"]
  puts "You Lose!"
when ["Rock", "Scissors"]
  puts "You Win!"
# This is if user chooses 'Paper'
when ["Paper", "Paper"]
  puts "It's a tie!"  
when ["Paper", "Scissors"]
  puts "You Lose!"
when ["Paper", "Rock"]
  puts "You Win!"
# This is if user chooses 'Scissors'
when ["Scissors", "Scissors"]
  puts "It's a tie!"  
when ["Scissors", "Rock"]
  puts "You Lose!"
when ["Scissors", "Paper"]
  puts "You Win!"
end
end
end

puts "\nWould you like to try again, Yes or No?"
  go_back = gets.chomp.capitalize
    if go_back == "Y" || go_back == "Yes"
  end
  
game
