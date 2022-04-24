# TEST 4.

=begin

This is to test that the game:
 1. Runs in Terminal.
 2. The changes made from Test 2 run.
 3. Line 20, 45 & 56 runs both the life limit and game play iff game lives > 0.
 4. Line 54 runs the loss of a game life if the user answers incorrectly.
 5. Line 69 amendment to allow for a user to enter a letter to play.
 

=end

class Hangman                   

    def initialize                  
      @letters = ('a'..'z').to_a
      @word = words.sample 
      @lives = 7    # Limiting the number of lives/chances the player has to play the game.
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

      puts word_teaser     
    end

    def make_guess    
      if @lives > 0   # if the user has lives left, they can continue to play, otherwise the game is over.
        puts "Enter a letter"
        guess = gets.chomp

        good_guess = @word.first.include? guess   
      
        if good_guess
          puts "Good guess"
        else
          @lives -= 1   # take away 1 life from the user every time they enter an incorrect guess. 
          puts "Sorry... you have #{ @lives } left. try again."   # let the user know how many lives they have left. ref to L20.
          make_guess    # after a guess, right or wrong, they need to guess another letter - dependant on whither they have run out of lives or not. ref L45.
        end
      else
        puts "Game over."   # if out of lives, game over.
      end
    
    end

    def begin
      puts "New game started... your word is #{ @word.first.size } characters long."      
      print_teaser
      puts "Your clue is #{ @word.last }." 
      
      make_guess    # Running Test 3 I could not enter a letter, the run did not give me the option. I was missing this line of code.
    end

end
game = Hangman.new
game.begin


# No errors.


=begin

    NOTE: No errors.
        

=end


