class Card
  def initialize(rank, suit)
    @rank = rank
    @suit = suit
  end

  def rank
    @rank
  end

  def suit
    @suit
  end

  def value
    
    face_value_hash = {:J => 10, :Q => 10, :K => 10, :A => 11}

    if rank.class == Symbol
      value = face_value_hash[rank]
    else
      value = rank.to_i
    end
  end
end