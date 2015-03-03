SUITS = ["Diamonds", "Clubs", "Spades", "Hearts"]
VALUES = ["1", "2", "3", "4", "5", "6","7","8","9", "10", "Jack", "Queen", "King"]
player_1 = []
player_2 = []
dealer  = []


@deck = []
SUITS.each do |suit|
    VALUES.each do |value|
        @deck << (value + " of " + suit)
    end
end

def first_deal(player)
   	2.times do
	    card = @deck.sample
	    @deck.delete(card)
   		player << card
   	end
end

   	first_deal(player_1)
    first_deal(player_2)
    first_deal(dealer)
puts "First player's hand is" + "|"
sleep 0.5 
puts "."  + "         |"
   	puts player_1
    puts "===================="  + "|"
puts "Second player's hand is"
sleep 0.5 
puts "."
    puts player_2
    puts "===================="
puts "Dealers hand is"
sleep 0.5 
puts "."
    puts dealer
    puts "===================="
puts ""
   	puts @deck.length