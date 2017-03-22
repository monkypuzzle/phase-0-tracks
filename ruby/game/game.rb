=begin
Pseudocode

* Define a class called WordGame
* Define attributes for 
* Create an initialize method that takes a guessword for argument, sets @current_guess_count to 0, @guessword to guessword, @max_guess_count to guessword.length, @current_guess_count to 0, @guesses_made to an empty array, and @is_final_guess? to false
* Create a method check_guess that takes a guess and returns revealed_guessword 
  * Increment current_guess_count
  * IF current_guess count == max_guess_count, set is_final_guess? to true
  * IF guess == 
  * Add guess to guesses_made array

* Create a method revealed_guessword
  * Iterate through guessword, printing each item if it's included in guesses_made, printing _ otherwise.

* 

=end


# Class declaration

class WordGame

  attr_reader :is_final_guess, :guessword, :revealed_guessword, :game_won

  def initialize(guessword)
    @guessword = guessword
    @max_guess_count = guessword.length + 3
    @current_guess_count = 0
    @is_final_guess = false
    @guesses_made = []
    @game_won = false
  end

  def check_guess(guess)
    if @current_guess_count == @max_guess_count
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
        reveal << ("_")
      end
    end
    reveal
  end

end



# Driver code

puts "User 1! What word would you like choose?"
user_word = gets.chomp
new_game = WordGame.new(user_word)
puts "Okay, give it over to User 2!"

until new_game.is_final_guess == true || new_game.guessword == new_game.revealed_guessword
  puts "What's your guess, User 2? Enter one letter."
  guess = gets.chomp
  new_game.check_guess(guess)
end

if new_game.game_won == true
  puts "Congrats, User 2! You won!"
else
  puts "You lost, User 2!"
end
