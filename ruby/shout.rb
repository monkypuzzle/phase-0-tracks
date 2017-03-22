module Shout

  def self.yell_angrily(words)
    words + "!!!" + " :("
  end

  def self.yelling_happily(words)
    "Hurray " + words.downcase + "! :)"
  end

end

puts Shout.yell_angrily("Hello you!")

puts Shout.yelling_happily("Hello you!")