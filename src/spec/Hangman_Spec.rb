require "./Hangman_Code.rb"
describe "hangman" do
    it "it returns the clue word size" do
      game = Hangman.new
      words_array = game.words
      expect(words_array).to eq(      [
        ["planets", "As the remnents of stars, these orbit their parent star."],
        ["nebulae", "They are stellar nurseries."],
        ["andromeda", "The galaxy that will one day collide with our own."],
        ["supernova", "The spectacular end to a stars life."],
        ["galaxy", "Home to stars, planets and black holes."],
      ])
    end

    it "it prints teaser to the screen as under scores" do
        game = Hangman.new (["planets"])
        game.print_teaser
        expect { game.print_teaser }.to output("_ _ _ _ _ _ _ \n").to_stdout
      end

end

=begin

In this spec file, I have tested 2 specific sections that I wanted to implement while developing the game. 

1. This is to test that the letter count in the chosen mystery word is printed.
The test refers to the array of 'mystery words' and their corresponding 'clue phrase'.

2. This is to test that 'mystery word' is printed as a series of under scores that correspond to 
the number of letters in the 'mystery word'.

=end