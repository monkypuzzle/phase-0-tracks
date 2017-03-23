=begin
Pseudocode

* Define a class called WordGame
* Define attributes for 
* Create an initialize method that takes a guessword for argument, sets @guessword to guessword, sets @current_guess_count to 0, @max_guess_count to guessword.length + 3, @current_guess_count to 0, @guesses_made to an empty array, and @is_final_guess to false, game_won to false
* Create a method check_guess that takes a guess and returns revealed_guessword 
  * Increment current_guess_count
  * IF current_guess count == max_guess_count, set is_final_guess to true
  * IF @guessword includes guess put "Good guess!"
    * ELSE, put "Bad guess!"
  * Add guess to guesses_made array
* Create a method revealed_guessword
  * Iterate through @guessword, printing each item if it's included in guesses_made, printing _ otherwise.
* Create a method endgame_message that prints "Congrats!" if game_won is true, "Bad job!" if game_won is false
* Add driver code to run the game

=end


# Class declaration

class WordGame

  attr_accessor :is_final_guess, :guessword, :revealed_guessword, :game_won, :current_guess_count, :guesses_made, :max_guess_count

  def initialize(guessword)
    @guessword = guessword
    @max_guess_count = guessword.length + 2
    @current_guess_count = 0
    @is_final_guess = false
    @guesses_made = []
    @game_won = false
  end

  def check_guess(guess)
    if @current_guess_count + 1 == @max_guess_count
      @is_final_guess = true
    end

    if @guesses_made.include? guess
      puts "You've already guessed that!"
    else
      @current_guess_count += 1
      @guesses_made << guess
      if @guessword.include? guess
        puts "Great guess!"
      else
        puts "Wrong wrong wrong!"
      end
    end

    puts "Guesses left: #{@max_guess_count - @current_guess_count}"
    puts revealed_guessword

    if revealed_guessword == guessword
      @game_won = true
    end
  end

  def revealed_guessword
    reveal = ''
    @guessword.split('').each do | letter |
      if @guesses_made.include?(letter)
        reveal << letter
      else
        reveal << "_"
      end
    end
    reveal
  end

  def endgame_message
    if @game_won == true
      p "Congrats, User 2! You won!"
    else
      p "You lost, User 2!"
    end
  end

end



# Driver code
# To be commented out for running tests!

puts "User 1! What word would you like choose?"
user_word = gets.chomp
new_game = WordGame.new(user_word)
system "clear"
puts "Okay, give it over to User 2!"

until new_game.is_final_guess == true || new_game.guessword == new_game.revealed_guessword
  puts "What's your guess, User 2? Enter one letter."
  guess = gets.chomp
  new_game.check_guess(guess)
end

new_game.endgame_message

