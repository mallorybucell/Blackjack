class Deck

  def initialize
    @cards = cards
  end

  def create_deck
    deck_of_cards = []

    suit_array = [:C, :D, :H, :S]
    rank_array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
    face_array = [:J, :Q, :K, :A]

    #Create numeric cards
    suit_array.each do |s|
      (rank_array.size - 1).times do |r|
        deck_of_cards << Card.new( rank_array[r].to_i, s.to_sym )
      end
    end
    suit_array.each do |s|
      face_array.size.times do |r|
        deck_of_cards << Card.new( face_array[r].to_sym, s.to_sym )
      end
    end
    
    return deck_of_cards
  end

  def cards
    available = create_deck.shuffle
  end

  def draw
    drawn = cards.pop
  end

  def drawn
    drawn.push(draw)
  end
end