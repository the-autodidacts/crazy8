require_relative 'card'
class Deck
  SUITS = ["hearts", "spades", "diamonds", "clubs"]
  RANKS = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
  attr_reader :cards

  def initialize()
    @cards = []
    SUITS.each do |suit|
      RANKS.each do |rank|
        i = Card.new(suit, rank)
        @cards.push(i)
      end
    end
  end

  def shuffle!(deck)
    deck.shuffle!
  end

  def draw(n)
    @hand = []
    n.times {@hand<<@cards.shift}
    return @hand
  end
end
