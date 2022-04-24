class Hangman                   # class: catagorising the object. Hangman: name of the object

    def initialize(word = nil)                 # def: to define. initialize: (initiaize method) set values to the object.
      @word = word || words.sample                  # @: Instance variable. word: variable. words.sample: Returns a random element from the array.              
      @lives = 3                    # @: @lives: Instance Variable (number of attempts). 3: Variable value (6 attempts).
      @word_teaser = ""
      @word.first.size.times do                 # @word.first.size.times: instance variable, determines word/caracter number/times. do: do this.
        @word_teaser += "_ "                    # word_teaser: variable. +=: varA = varA+varB.
      end                   # end: closes mehtod ref L8.
    end                 # end: closes method ref L3.

    def words                   # def words: define the variable with a list of words as its values.
      [
        ["planets", "As the remnents of stars, these orbit their parent star."],                    # "WORD", "Clue".
        ["nebulae", "They are stellar nurseries."],
        ["andromeda", "The galaxy that will one day collide with our own."],
        ["supernova", "The spectacular end to a stars life."],
        ["galaxy", "Home to stars, planets and black holes."],
      ]
    end                 # end: closes method ref L12.

    def print_teaser last_guess = nil                   # def print_teaser: define the variable with number of spaces that correspond with the number of characters in the word.
      update_teaser(last_guess) unless last_guess.nil?                  #update_teaser(last_guess): changes the clue corresponding to the word. unless last_guess.nil?: if no attempt (ie. exit) the same clue corresponding to the word is given.
      puts @word_teaser                 # puts word_teaser: prints the word teaser.
    end                 # end: closes method ref L22.

    def update_teaser last_guess
      new_teaser = @word_teaser.split
      new_teaser.each_with_index do |letter, index|
        if letter == '_' && @word.first[index] == last_guess
          new_teaser[index] = last_guess
        end
      end
      @word_teaser = new_teaser.join(' ')
    end

    def make_guess
      if @lives > 0
        require 'colorize'                  # require 'colorize': Gem - adds color to text.
        puts "Enter a letter".yellow.bold                 #puts: prints string. .yellow.bold: executes the Gem in bold font.
        guess = gets.chomp
        good_guess = @word.first.include? guess
  
        if guess == "exit"

          require 'ruby2d'
          start = Sound.new('Sound_Game-Start.wav')
          start.play

          require 'colorize'                # require 'colorize': Gem - adds color to text.
          puts "Thank you for playing!".yellow.bold                   #puts: prints string. .yellow: executes the Gem in bold font.
          system(%Q{say -v "Daniel" "Thank you for playing!"})

        elsif guess.length > 1                  # elsif: conditional. guess.length > 1: if the user's guess is more than one letter.

          require 'tty-spinner'
          sp1 = ::TTY::Spinner.new("[:spinner]")
          sp1.auto_spin
          sleep(2)
          sp1.error

          require 'ruby2d'
          mistake = Sound.new('Sound_Two-Letter-Ans.wav')
          mistake.play
          
          require 'colorize'                    # require 'colorize': Gem - adds color to text.
          puts "Only guess 1 letter at a time please!".red.bold                  #puts: prints string. .red.bold: executes the Gem in bold font.
          system(%Q{say -v "Daniel" "only guess 1 letter at a time please."})
            make_guess
  
        elsif good_guess
          require 'tty-spinner'
          sp1 = ::TTY::Spinner.new("[:spinner]")
          sp1.auto_spin
          sleep(2)
          sp1.success

          require 'ruby2d'
          correct = Sound.new('Sound_Correct-Guess.wav')
          correct.play

          require 'colorize'                    # require 'colorize': Gem - adds color to text.
          puts "You are correct!".green.bold                 # puts: prints string. .green.bold: executes the Gem in bold font.
          system(%Q{say -v "Daniel" "You are correct!"})                    # L58: the code to run the 

          print_teaser guess
          if @word.first == @word_teaser.split.join
            require 'tty-font'          # require 'tty-font': Gem - add big font to text in 'DOOM' style.
            require 'pastel'
            font = TTY::Font.new(:doom, letter_spacing: 1)          # font: variable. 
            pastel = Pastel.new
            puts pastel.green(font.write("WELL   DONE!")) 
            
            require 'ruby2d'
            win = Sound.new('Sound_You-Won.wav')
            win.play

            require 'colorize'                # require 'colorize': Gem - adds color to text.
            puts "Congratulations, you have won this round!".green.bold                 #puts: prints string. .colorize(:green): executes the Gem in bold font.
            system(%Q{say -v "Daniel" "Congratulations... you have won this round!"})
          else
            make_guess
          end

        else
          @lives -= 1
          require 'tty-spinner'
          sp1 = ::TTY::Spinner.new("[:spinner]")
          sp1.auto_spin
          sleep(2)
          sp1.error
          require 'colorize'                    # require 'colorize': Gem - adds color to text.
          
          require 'ruby2d'
          wrong = Sound.new('Sound_Incorrect-Guess.wav')
          wrong.play

          puts "Sorry, you have #{ @lives } lives left. Try again.".red.bold                    #puts: prints string. .red.bold: executes the Gem in bold font.
          system(%Q{say -v "Daniel" "Sorry... you have #{ @lives } lives left. Try again."})
          make_guess
        end

      else
        
        require 'tty-font'          # require 'tty-font': Gem - add big font to text in 'DOOM' style.
        require 'pastel'
        font = TTY::Font.new(:doom, letter_spacing: 1)          # font: variable. 
        pastel = Pastel.new
        puts pastel.red(font.write("BAD   LUCK")) 

        require 'ruby2d'
        lose = Sound.new('Sound_Game-Over.wav')
        lose.play
        
        require 'colorize'
        puts "Game over... better luck next time!".red.bold
        system(%Q{say -v "Daniel" "Game over... better luck next time!"})
      
      end
    end

    def begin

      require 'ruby2d'
      start = Sound.new('Sound_Game-Start.wav')
      start.play

      require 'tty-font'          # require 'tty-font': Gem - add big font to text in 'DOOM' style.
      require 'pastel'
      font = TTY::Font.new(:doom, letter_spacing: 1)          # font: variable. 
      pastel = Pastel.new
      puts pastel.magenta(font.write("HANGMAN"))         
      
      require 'colorize'                    # require 'colorize': Gem - adds color to text.
      puts "New game started... your word is #{ @word.first.size } characters long.".yellow.bold                  #puts: prints string. .blue.bold: executes the Gem in bold font.
      system(%Q{say -v "Daniel" "New game started... your word is #{ @word.first.size } characters long."})
      
      require 'colorize'                    # require 'colorize': Gem - adds color to text.
      puts "To exit the game at any point type 'exit'".blue.bold                  #puts: prints string. .blue.bold: executes the Gem in bold font.
      system(%Q{say -v "Daniel" "To exit game at any point type 'exit'."})
      
      print_teaser
      puts "Clue: #{ @word.last }".bold
      system(%Q{say -v "Daniel" "Your clue is... #{ @word.last }. Enter a letter..."})
      make_guess

    end

end



=begin

NOTES:

Colorize Gem: 
- Initially I used this code sequence...
    require
    puts "String".colorize(:red)
- But then I found a more efficient way to code in the Gem...
    require
    puts "String".red

Line 48, Error Handling More than One Letter Input
- If the user answers with more than one letter there is a sequence to notify the user that only one letter at a time can be used.

Text to Speech (but not...)
- I attempted to learn how to use tts (text to speech) as a Gem. However, I did not want to over complicate the code and run into too many errors - given the restriction of time to complete the assignment.
- Instead of tts I used a cmd that allows text to be read and heard over the device.
- The code is as follows...
    system(%Q{say -v "Daniel" "To exit game at any point type 'exit'"})


=end