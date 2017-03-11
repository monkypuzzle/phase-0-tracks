# Replace in the "<???>" with the appropriate method (and arguments, if any).
# Uncomment the calls to catch these methods red-handed.

# When there's more than one suspect who could have
# committed the crime, add additional calls to prove it.

puts "iNvEsTiGaTiOn".swapcase
# => “InVeStIgAtIoN”

puts "zom".insert(1, "o")
# => “zoom”

puts "enhance".center(15)
# => "    enhance    "

puts "Stop! You’re under arrest!".upcase
# => "STOP! YOU’RE UNDER ARREST!"

puts "the usual".concat(" suspects")
#=> "the usual suspects"

puts " suspects".prepend("the usual")
# => "the usual suspects"

puts  "The case of the disappearing last letter".chop
# => "The case of the disappearing last lette"

puts "The mystery of the missing first letter".delete("T")
puts "The mystery of the missing first letter".slice(1.."The mystery of the missing first letter".length)
# => "he mystery of the missing first letter"

puts "Elementary,    my   dear        Watson!".squeeze
# => "Elementary, my dear Watson!"

puts "z".ord
puts "z".sum
# => 122 
# The number represents the ASCII code for the letter. Every letter is encoded - in UTF-8, I believe every character encoded by eight binary digits. The ASCII code is the same number but written in base 10.
# Ord is useable only for single-character strings. Sum for more.

puts "How many times does the letter 'a' appear in this string?".count("a")
# => 4