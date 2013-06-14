module PrintDialogue

  def game_start
    puts "Welcome to Flash Cards with Friends!"
    puts "Type 'exit' if you feel you're in over your head."
    puts "Type 'answer' if you know you will never get it."  
  end

  def correct_answer
    puts "Correct! You're not as dumb as you look..."
  end

  def wrong_answer
    puts "Wow, how do you not know this?"
    puts "I'll let you try again because I feel bad for you..."
  end

  def naughty_words
    puts "Don't be mean, I don't like you either."
    puts "Everything is logged and posted to Socrates. I win."
  end

  def gave_up
    puts "You should just give up on life, but here is your answer."
  end
end
