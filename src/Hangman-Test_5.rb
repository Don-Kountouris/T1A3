# TEST 4.

=begin

This is to test that the game:
 1. Runs in Terminal.
 2. The changes made from Test 4 run.
 3. Line 20, 45 & 56 runs both the life limit and game play iff game lives > 0.
 4. Line 54 runs the loss of a game life if the user answers incorrectly.
 5. Line 69 amendment to allow for a user to enter a letter to play.
 

=end

class Hangman                   

    def initialize                  
      @letters = ('a'..'z').to_a
      @word = words.sample 
      @lives = 7    
      @correct_guesses = []   # start with an empty array as letters must be put in the array to collect over the course of the game. ref @correct_guesses << guess
      @word_teaser = ""   # added as lined spaces to first reveal the number of characters that exit in the word.

      @word.first.size.times do     # this has been moved as it will be included in the correct guesses array.
        word_teaser += "_ "     
      end
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

    def print_teaser last_guess = nil
#      word_teaser = ""     # this is now at the top so don't need it here. 
      
#      @word.first.size.times do    # moved this method to the top
#        word_teaser += "_ "     
#      end

      update_teaser(last_guess) unless last_guess.nil?    # the spaces will change until it is the last guess and if the last guess is not nil, 
                                                          # also passing in the last guess to the update teaser method
      puts @word_teaser     
    end

    def update_teaser last_guess
      new_teaser = @word_teaser.split   # create a new version of teaser method and split the string 
      new_teaser.each_with_index |letter, index|    # here is to replace the under scores with letters that correspond with the word (indexed to the letter).
        if letter == '_' && @word.first.split[index] == last_guess
          new_teaser[index] = last_guess
        end
      end

      @word_teaser = new_teaser.join(' ')    # need to join the array as a string by inserting the blank space character.

    end

    def make_guess    
      if @lives > 0   
        puts "Enter a letter"
        guess = gets.chomp

        good_guess = @word.first.include? guess   
      
        if good_guess
          puts "You are correct!"   # amended the string.

          @correct_guesses << guess   # to store the correct guess in an array.

          @letters.delete guess   # this removes the correct guess from the alphabet array.

          print_teaser guess    # here the letter they pass in will go to the method.
          make_guess
        else
          @lives -= 1   
          puts "Sorry... you have #{ @lives } left. try again."   
          make_guess    
        end
      else
        puts "Game over."   
      end
    
    end

    def begin
      puts "New game started... your word is #{ @word.first.size } characters long."      
      print_teaser
      puts "Your clue is #{ @word.last }." 
      
      make_guess    
    end

end
game = Hangman.new
game.begin


# No errors.


=begin

    NOTE: ERROR!!!


        

=end


