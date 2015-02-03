class Deck

  def initialize
    @cards = cards
    @drawn = []

      

      suit_array = [:C, :D, :H, :S]
      nface_array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
      fface_array = [:J, :Q, :K, :A]
      deck_of_cards = []
      #Create numeric cards
      suit_array.each do |s|
        (nface_array.size - 1).times do |nf|
          deck_of_cards << Card.new( nface_array[nf].to_i, s.to_sym )
        end
      end
      #Create facecards
      suit_array.each do |s|
        fface_array.size.times do |ff|
          deck_of_cards << Card.new( fface_array[ff].to_sym, s.to_sym )
        end
      end
      @cards = deck_of_cards.shuffle!
      
  end


  def cards
    @cards
  end

  def draw
    taken = @cards.pop
    @drawn << taken
    taken
    
  end

  def drawn
    @drawn
  end
end