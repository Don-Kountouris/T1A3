# TEST 1.

=begin

This is to test that the game:
 1. Runs in Terminal.
 2. Opens with line 31.
 3. Line 23 includes the clue corresponding to the word.

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
      puts "New game started... your clue is #{ @word.first }."  
      guess = gets.chomp
      puts "You guessed #{guess}"
    end

end
game = Hangman.new
game.begin


=begin
    NOTE: 

        Running this in Terminal returned:
            New game started... your clue is galaxy

        The game gave me the answer 'galaxy,' instead of the clue 'Home to stars, planets and black holes.'
        This is because in line 31, the returned instance variable is defined as the first string and not the last.

        Re-write line 31: 
            puts "New game started... your clue is #{ @word.first }."
        to:
            puts "New game started... your clue is #{ @word.last }."

=end


