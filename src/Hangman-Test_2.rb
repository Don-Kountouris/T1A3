# TEST 2.

=begin

This is to test that the game:
 1. Runs in Terminal.
 2. The changes made from Test 1 run.
 3. Line 35 & 41 adds a series of empty spaces representing the mystery word.
 4. Line 37 & 38 adds a loop to the mystery word such that the number of spaces that exist are dependant on the length of the word.
 5. Line 34 runs a line of how many letters the word has.
 6. Line 43 & 44 allows the player to enter a letter.

=end

class Hangman                   

    def initialize                  
      @letters = ('a'..'z').to_a
      @word = words.sample                 
    end                   
   

    def words                  
      [
        ["planets", "As the remnents of stars, these orbit their parent star."],                    
        ["nebulae", "They are stellar nurseries."],
        ["andromeda", "The galaxy that will one day collide with our own."],
        ["supernova", "The spectacular end to a stars life."],
        ["galaxy", "Home to stars, planets and black holes."],
      ]
    end                 

    def begin
      puts "New game started... your word is #{ @word.first.size } characters long."      # re-wrote this line to give the character word count, instead of the clue.
      word_teaser = ""      # added a string of empty letters (under scrolls).
      
      @word.first.size.times do     # added an operation that loops over the word whenever a letter(s) is added and conitues to loop dependant on the size of the word.
        word_teaser += "_ "     # this adds the under scroll to the empty space (its number depends on the length of the word).
      end

      puts word_teaser      # prints out the under scrolled empty word.
      puts "Your clue is #{ @word.last }."        # corrected the line as stated in Hangman-Test_1.rb.
      puts "Enter a letter."      # added a line to ask the player to enter a letter to begin the game.
      guess = gets.chomp
      puts "You guessed #{guess}"
    end

end
game = Hangman.new
game.begin



=begin

    NOTE: 
        No errors. There is no way to indicate if the user has entered a correct or incorrect letter as yet.

=end


