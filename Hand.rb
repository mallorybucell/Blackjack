class Hand
  def initialize
    @hand_cards = []
    @hand_value = 0
    # @rank_hash
  end

  def hand
    @hand_cards
  end

  def add(*c)
    #recalculate hand_value based on additional cards
    #put additional cards in hand in case need to show player hand
    # if c.rank == :A && @hand_value > 21
    #     hand_value -= 10
    # end

    
    c.each do |a|
      @hand_value += a.value
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