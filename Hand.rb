class Hand
  def initialize
    @hand_cards = []
    @hand_value = 0
  end

  def hand
    @hand
  end

  def add(*c)
    @hand_cards.push(c)
  end

  def hand_value
    hand_cards.each
      hand_value += card.value
  end
end