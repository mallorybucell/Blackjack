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
    # if c.rank == 14, card is :A. &
    @hand_aces = {:A => 0}
    
    @hand_cards << c.card_string
    c.each do |a|
      @hand_value += a.value
      if a.rank == 14
        @hand_aces[:A] += 1
      end
    end
    #@hand_cards << c
binding.pry
    return @hand_value
  end


  def value
    case 
    when @hand_value <= 21
      @hand_value
    else @hand_aces[:A] = 1 && @hand_value > 21
      @hand_value -= 10
    #else --fill this in for cases with more than 1 ace
    end
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