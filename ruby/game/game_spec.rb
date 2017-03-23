require_relative 'game'

describe WordGame do
  
  let(:wordgame) { WordGame.new("unicorn") }

  it "takes a guessword" do
    expect(wordgame.guessword).to eql "unicorn"
  end

  it "sets number of guesses based on guessword length" do
    expect(wordgame.max_guess_count).to eql ("unicorn".length + 3)
  end

  it "doesn't count repeated guesses against user" do
    wordgame.guesses_made << 'c'
    wordgame.current_guess_count = 1
    wordgame.check_guess('c')
    expect(wordgame.current_guess_count).to eql 1
  end

  it "reveals letters in guessword if they are guessed" do
    wordgame.check_guess('c')
    expect(wordgame.revealed_guessword).to eql "___c___"
  end

  it "prints congratulatory message if game was won" do
    wordgame.game_won = true
    expect(wordgame.endgame_message). to eql "Congrats, User 2! You won!"
  end

end