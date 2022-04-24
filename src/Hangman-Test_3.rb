# TEST 3.

=begin

This is to test that the game:
 1. Runs in Terminal.
 2. The changes made from Test 2 run.
 3. Line 33-41 runs the empty word.
 4. Line 50-54 runs two outcomes for either a correct or incorrect answer.
 5. Line 44-46 runs the option to enter a letter from the user.
 

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

    def print_teaser
      word_teaser = ""      
      
      @word.first.size.times do     
        word_teaser += "_ "     
      end

      puts word_teaser      # prints out the under scrolled empty word.
    end
# NOTE: I have moved the teaser method (L33-L41) out of the begin method in order to separate the code so it is easier to read and identify. It will now be printed only within the beginning (L46).

    def make_guess    # renamed 'guess' to 'make_guess'
      puts "Enter a letter."      
      guess = gets.chomp

      good_guess = @word.first.include? guess    # This will check if the letter you have entered is a letter within the string of the mystery word.
      
      if good_guess
        puts "Good guess"
      else
        puts "Sorry... try again."
      end
# NOTE: I have included a conditional that responds to a correct or incorrect guess.
    
    end
# NOTE: I have moved the guess method (L44-L47) out of the begin method in order to separate the code so it is easier to read and identify.

    def begin
      puts "New game started... your word is #{ @word.first.size } characters long."      
      print_teaser
      puts "Your clue is #{ @word.last }."        
    end

end
game = Hangman.new
game.begin



=begin

    NOTE: 
        Error - somehow I've lost the ability to enter a letter and thus, play the game.

=end


