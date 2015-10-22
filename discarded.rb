require_relative('deck')
class Discarded

  def initialize
    @discArray = []
  end

  def top_card
    @top_card = @discArray[0]
    @top_card
  end

  def self.validate_play(card)
    top_card
    if card.suit == @top_card.suit || card.rank == @top_card.rank || @top_card.rank == 8
      return true
    end
  end

  def add(card)
    @discArray.unshift(card)
  end

end
