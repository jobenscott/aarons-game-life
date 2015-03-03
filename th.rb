deck = cards = []
((2..9).to_a + %w(Ten Jack Queen King Ace)).each {
  |value| %w(Diamonds Hearts Clubs Spades).each {|suit| deck << value.to_s + suit}
}

cards = deck.clone

player1 = []
player2 = []

def draw_card(player)
  player << cards.delete(cards.sample)
end    

class Game 
	def draw
		draw_card(player1)
		draw_card(player2)
		draw_card(player1)
		draw_card(player2)
	end

	def compare(hand1, hand2)
		if hand1 > hand2
			

	end
end
