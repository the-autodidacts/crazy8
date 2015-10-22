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
    @hand.each do |card|
      break if Discarded.validate_play() == false
      return false
    return true

end
