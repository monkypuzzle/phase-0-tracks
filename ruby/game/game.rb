=begin
Pseudocode

* Define a class called WordGame
* Define attributes for max_guess_count, current_guess_count, a guessword, a guesses_made array, and is_final_guess?
* Create an initialize method setting current_guess_count to 0, is_final_guess? to false
* Create a method take_guessword for taking/setting a guess_word, setting max_guess_count to guess_word.length
* Create a method check_guess that takes a guess and returns revealed_guessword 
  * Increment current_guess_count
  * IF current_guess count == max_guess_count, set is_final_guess? to true
  * IF guess == 
  * Add guess to guesses_made array

* Create a method revealed_guessword
  * Iterate through guesses_made array, printing each item if it's included in guess_word, printing _ otherwise.

* 

=end

class WordGame

  def initialize
    @max_guess_count = nil
    @current_guess_count = 0
    @guessword = nil
    @guesses_made = []
    is_final_guess? = false
  end

  def take_guessword
    
  end

end