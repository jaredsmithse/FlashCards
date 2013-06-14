require './parser'
require './deck'
require './card'

class FlashCards
  def initialize
    @parser = Parser.new('./flashcard_samples.txt')
    @deck = @parser.read_in_cards
    @current_card = nil
    @input = ""
  end

  def run
    puts "Welcome to Flash Cards with Friends!"
    puts "Type 'exit' if you feel you're in over your head."
    puts "Type 'answer' if you know you will never get it."
    play_game
  end

  def play_game
    play_card
    @input = gets.chomp
    while true
      if @current_card.is_answer?(@input)
        puts "Correct! You're not as dumb as you look..."
        play_card
      elsif @input == "answer"
        puts "You should just give up on life, but here is your answer."
        @current_card.print_answer
        play_card
        @input = gets.chomp
      elsif @input == "fuck you"
        puts "Don't be mean, I don't like you either."
        @input = gets.chomp
      elsif @input == "exit"
        break
      else
        puts "Wow, how do you not know this?"
        puts "I'll let you try again because I feel bad for you.."
        @input = gets.chomp
      end
    end
  end

  def play_card
    @current_card = @deck.get_card
    @current_card.print_definition
  end


end

game = FlashCards.new
game.run
