# Pseudocode
# - Define a function called letter_increment that changes each letter to next letter
#   - If vowel, change to next vowel in 'aeiou'
# - Define a function called name_swap that swaps first and last name
# - Define a function called create_alias that calls above two functions and outputs alias
# - Create user interface
#   - Prints request for user input of name, store name
#   - Call create_alias on name
#   - Output alias



def letter_increment (name)
  vowels = 'aeiou'.split('')
  consonants = 'bcdfghjklmnpqrstvwxyz'.split('')
  letter_incremented_name = name.downcase.split('')
  letter_incremented_name.map! do |char|
    if char == ' '
      char
    elsif vowels.index(char) != nil
      if char == 'u'
        char = 'a'
      else
      char = vowels[(vowels.index(char) + 1)]
      end
    elsif consonants.index(char) != nil
      char = consonants[(consonants.index(char) + 1)]
    end
  end
  print letter_incremented_name.join('').split(' ').map!{|word|word.capitalize}.join(' ')
end

def name_swap (name)
  old_name = name.split(' ')
  new_name = []
  old_name.each do |word|
    if word == old_name.last
      new_name << old_name[0]
    else
      new_name << old_name[(old_name.index(word) + 1)]
    end
  end
  new_name.join(' ')
end

# def create_alias ()
#   agent_alias = ''
#   puts 'What\'s your name, agent?'
#   agent_name = gets.chomp
#   agent_alias = name_swap(agent_name)
#   agent_alias = letter_increment(agent_name)
#   puts "Alright, #{agent_name}! You are no longer #{agent_name}. You are now: #{agent_alias}!"
# end

# puts letter_increment('Richard Branson') 

puts name_swap('Richard Branson')

# create_alias





