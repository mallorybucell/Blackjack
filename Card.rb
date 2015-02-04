class Card
  def initialize (face, suit)
    @face = face
    @suit = suit
  end

  def face
    @face
  end

  def suit
    @suit
  end

  def value
    face_value_hash = {:J => 10, :Q => 10, :K => 10, :A => 11}
      if face.class == Symbol
        value = face_value_hash[face]
      else 
        value = face.to_i 
      end
  end

  def rank
    facerank_hash = {:J => 11, :Q => 12, :K => 13, :A => 14}

    if face.class == Symbol
      rank = facerank_hash[face]
    else 
      rank = face.to_i 
    end
  end

  def string
    "#{face}#{suit}, "
  end


end