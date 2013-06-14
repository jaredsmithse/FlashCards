require './parser'
require './deck'
require './card'
require './printdialogue'


class FlashCards
  include PrintDialogue

  def initialize
    @parser = Parser.new('./flashcard_samples.txt')
    @deck = @parser.read_in_cards
    @current_card = nil
    @input = ""
    game_start
    play_game
  end

  def play_game
    play_card
    wrong_limit = 0
    while wrong_limit < 3
      if @current_card.is_answer?(@input)
        correct_answer
        wrong_limit = 0
        play_card
      elsif @input == "answer"
        gave_up
        @current_card.print_answer
        play_card
        wrong_limit = 0
      elsif @input == "fuck you"
        naughty_words
        @input = gets.chomp
      elsif @input == "exit"
        break
      else
        wrong_limit += 1
        wrong_answer
        @input = gets.chomp
      end
    end
  end

  def play_card
    @current_card = @deck.get_card
    @current_card.print_definition
    @input = gets.chomp
  end


end

game = FlashCards.new
