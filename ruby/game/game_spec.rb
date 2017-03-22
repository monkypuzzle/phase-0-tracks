require_relative 'game'

describe WordGame do
  
  let(:wordgame) do
  
  WordGame.new

  end

  it "takes a guessword" do
    wordgame.take_guessword()
    expect(wordgame.take_guessword("")).to eql
  end

  it "sets number of guesses to guessword length" do
    expect(wordgame.max_guesses).to eql wordgame.guessword.length
  end

  it "doesn't count repeated guesses against user" do
    expect(wordgame.current_guess_count).to 
  end

  it "reveals " do

  end

  it "" do

  end

end