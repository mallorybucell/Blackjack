class Hand
  def initialize
    @hand_cards = []
    @hand_value = 0
  end

  def hand
    @hand_cards
  end

  def add(*c)
    #recalculate hand_value based on additional cards
    #put additional cards in hand in case need to show player hand
    c.each do |c|
      @hand_value += c.value
      #@hand_card.push(c)
    end
  end

  def value
    @hand_value
  end

  def busted?
    @hand_value > 21
  end

  def blackjack?
    @hand_value = 21
  end

  def show_hand_string
    #above only does values- how add strings??  Does this need to happen
    #when card is added somehow?
  end
end