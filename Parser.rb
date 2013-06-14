
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
    p output.inspect
  end



end

text = Parser.new('./flashcard_samples.txt')
text.read_in_cards

# Card.new(word,definition)
