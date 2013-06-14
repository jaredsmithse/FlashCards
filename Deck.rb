class Deck

  def initialize
    @deck = deck    
  end

  def get_card
    @cards.shuffle.pop  
  end

  def cards_left
    @cards.length > 0?
  end

end
