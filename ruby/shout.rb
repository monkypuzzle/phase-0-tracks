# module Shout

#   def self.yell_angrily(words)
#     words + "!!!" + " :("
#   end

#   def self.yelling_happily(words)
#     "Hurray " + words.downcase + "! :)"
#   end

# end

module Shout
  def yell_angrily(words)
    words.upcase + "!!!" + " :("
  end
end


class Leonidas
  include Shout
end

class Blake_from_Mitch_and_Murray
  include Shout
end


leonidas = Leonidas.new

blake = Blake_from_Mitch_and_Murray.new


puts leonidas.yell_angrily("This is Sparta")

puts blake.yell_angrily("Always be closing")