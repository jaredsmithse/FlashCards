class Card
	attr_reader :definition, :word
	def initialize(definition, word)
		@definition = definition
		@word = word
	end

  def print_answer
    puts "Answer: #{@word}"
  end

  def print_definition
    puts "Definition: #{@definition}"
  end

	def is_answer?(potential_answer)
		@word == potential_answer
	end

end
