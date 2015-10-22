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







# @hand.each do |card|
#   break if Discarded.validate_play(card) == true
#   return true
# return false
#   end
# end
