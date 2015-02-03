class Hand
  def initialize
    @hand_cards = ""
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
    
    c.each do |a|
      @hand_cards << a.string
      #binding.pry
    end
    c.each do |b|
      @hand_value += b.value
      if b.rank == 14
        @hand_aces[:A] += 1
      end
    end
  
# binding.pry
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

  def to_s
    @hand_cards.chomp(", ")
  end
end