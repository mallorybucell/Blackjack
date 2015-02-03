class Deck

  def initialize
  end

  def create_deck
    deck_of_cards = []

    suit_array = [:C, :D, :H, :S]
    rank_array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
    face_array = [:J, :Q, :K, :A]

    #Create numeric cards
    suit_array.each do |s|
      rank_array.size.times do |r|
        deck_of_cards << Card.new( rank_array[r].to_i, s.to_sym )
      end
    end
    return deck_of_cards
  end
end