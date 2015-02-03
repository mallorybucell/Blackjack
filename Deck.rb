class Deck

  def initialize
    @cards = cards
    @drawn = []

      

      suit_array = [:C, :D, :H, :S]
      rank_array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
      face_array = [:J, :Q, :K, :A]
      deck_of_cards = []
      #Create numeric cards
      suit_array.each do |s|
        (rank_array.size - 1).times do |r|
          deck_of_cards << Card.new( rank_array[r].to_i, s.to_sym )
        end
      end
      #Create facecards
      suit_array.each do |s|
        face_array.size.times do |r|
          deck_of_cards << Card.new( face_array[r].to_sym, s.to_sym )
        end
      end
      @cards = deck_of_cards.shuffle!
      @draw = []
  end


  def cards
    @cards
  end

  def draw
    cards = cards.take(1)
    
  end

  def drawn
    drawn = draw
  end
end