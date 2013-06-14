
class Parser


  def initialize(file)
    @file = file

  end

  def read_in_cards
    flashcard_array = []
    File.open(@file,'r').each do |line|
      flashcard_array << line.chomp
    end
    flashcard_array.delete_if { |element| element == ""}
    output = []
    flashcard_array.each_slice(2) { |card| output << card }
    puts make_deck(make_cards(output))
  end

  private
  def make_cards(card_info)
    @card_array = []
    card_info.each do |card|
      @card_array << Card.new(card[0],card[1])
    end
    @card_array
  end

  def make_deck(cards)
    Deck.new(cards)
  end
end

text = Parser.new('./flashcard_samples.txt')
text.read_in_cards

# Card.new(word,definition)
