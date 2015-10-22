
class Card
  def initialize(suit, rank)
    @suit = suit
    @rank = rank
  end
end

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

  def shuffle(deck)
    deck.shuffle
  end

  def draw(n)
    @hand = []
    n.times {@hand<<@cards[0]}
    return @hand
  end
end


class Player

  def initialize
    @hand = []
  end

  def draw(card)
    @hand << card
  end
end
