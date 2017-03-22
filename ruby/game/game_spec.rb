require_relative 'game'

describe WordGame do
  
  let(:wordgame) { WordGame.new("unicorn") }

  it "takes a guessword" do
    expect(wordgame.guessword).to eql "unicorn"
  end

  it "sets number of guesses based on guessword length" do
    expect(wordgame.max_guess_count).to eql (wordgame.guessword.length + 3)
  end

  it "doesn't count repeated guesses against user" do
    
    expect(wordgame.current_guess_count).to 
  end

  it "reveals " do

  end

  it "prints congratulatory message if game was won" do
    expect wordgame.game_won
  end

end