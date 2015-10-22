
class Card
  def initialize(suit, rank)
    @suit = suit
    @rank = rank
  end
end

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


require_relative('deck')
class Discarded
@top_card = @discArray[0]
  def initialize
    @discArray = []
  end

  def top_card
    @top_card = @discArray[0]
    @top_card
  end

  def self.validate_play(card)

    puts top_card
    if card.suit == @top_card.suit || card.rank == @top_card.rank || @top_card.rank == 8
      return true
    end
  end

  def add(card)
    @discArray.unshift(card)
  end

end


class Player

  def initialize
    @hand = []
  end

  def draw(card)
    @hand << card
  end

  def display_hand
    @hand
  end

  def any_play?
    @hand.index{ |card| Discarded.validate_play(card)}
  end
end

player1 = Player.new
deck = Deck.new
deck.shuffle!(deck.cards)
discard = Discarded.new
discard.add(deck.draw(10))
player1.draw(deck.draw(1))
