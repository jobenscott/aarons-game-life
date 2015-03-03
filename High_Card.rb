SUITS = ["Diamonds", "Clubs", "Spades", "Hearts"]
VALUES = ["Ace", "2", "3", "4", "5", "6","7","8","9", "10", "Jack", "Queen", "King"]
player_1 = []
player_2 = []



@deck = []
SUITS.each do |suit|
    VALUES.each do |value|
        @deck << (value)
    end
end

def first_deal(player)
	    card = @deck.sample
	    @deck.delete(card)
   		player << card
end

p first_deal(player_1)
p first_deal(player_2)




VALUES.each_with_index do |value, index|
	if value == player_1[0] 
		player_1[1] = index
	end

	if value == player_2[0]
		player_2[1] = index
	end
end


p player_1
p player_2

if player_1[1] > player_2[1]
	p "player 1 Wins"
elsif player_1[1] < player_2[1]
	p " player 2 wins"
else
	p "Tie"
end
