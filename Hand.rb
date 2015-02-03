class Hand
  def initialize
    @hand_cards = []
    @hand_value = 0
  end

  def hand
    @hand_cards
  end

  def add(*c)
    #add new cards to hand
    @hand_cards.push(c)
  end

  def value
  #recalculate hand_value based on additional cards
  ##why can't I call card value here?
    @hand_cards.each
      @hand_value += card.value
    @hand_value
  end
end