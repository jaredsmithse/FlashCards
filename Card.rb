class Card
	attr_reader :definition, :word
	def initialize(definition, word)
		@definition = definition
		@word = word
	end

	def is_answer?(potential_answer)
		@word == potential_answer
	end

end