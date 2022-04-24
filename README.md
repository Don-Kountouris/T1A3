# T1A3 TERMINAL APPLICATION - Don Kountouris 11958

# OUTLINE & PURPOSE:

In this assignment, I have developed a text based version of the game Hangman. Hangman is an old school favorite pencil and paper word game where the goal is simply to find the missing letters of a word. The player is presented with a number of blank spaces representing the missing letters you need to find. If the player guesses correctly, then the letters complete the word and they win. However, if an incorrect guess is made, the player loses a life and a part of the hangman is drawn. The object of the game is to guess the word before you either run out of lives or the picture of the hangman is completed.

This program will resemble the game Hangman as an interactive text based version of the word game by using a host to guide the player, a set of clues and colour to distiguish elements of the game.

As Terminal can be very limiting and basic, when used as a means to play a game, I have attempted to make it as entertaining as possible. As with most word games, they can become monotonous, so I have added numerous different words that will be used at random. Having said that, word and number games are designed for a particular type of player and games such as this have an elemnt of longevity due to both their simplicity and difficulty.

Traditionally, a game such as this is played using a pen and paper, but both these items are almost irrelevant in the current world where humans interact and communicate with a device over a pen and paper. Creating an 'app' version points towards an inevitable direction in our evolution as a technologically advanced species.

# STRUCTURE OF THE GAME

Introduction:

1. The player is told that a new game has started and that their mystery word is ofa certain number of characters long - this is their first clue.
2. Instructions on how to exit the game at any point are given by simply typing 'exit'.
3. A second clue is given in the form of a series of under scores, eg: '_ _ _ _ _ _ _', to indicate the mystery word and how many letters the player needs    to guess in order to complete the word.
4. A third clue is given as a phase, this is the most important clue for the player.

Playing the game:

6. The player is told to enter a letter.
      Correct Ans: Once a letter has been entered, if correct the letter fills its space(s), the player is congratulated and asked to make their next             guess.
      Incorrect Ans: If the player enters an incorrect answer, the letter is not included, the player is notified that they have made an error, they lose         one of their 6 chances to play and asked to make their next guess.

Completing the game:

7. Winning: If the player completes the word within their 6 chances/lives, the player is congratulated and wins the game.
   Losing: If the player does not complete the word and has run out of chances, the player has been told that they have lost the game and can try again.
   
# FEATURES

Game Host:

Once the game begins there is a host that guides the player throughout the game. This allows the player to have a step-by-step instruction on how to begin the game, answer questions, be guided by clues and understand the results of your answers. On some devices the game's host is vocalised in order to allow for a greater interactive experience while playing the game.

Clear and Concise Set of Rules:

The game is simple and its instructions follow this trend. There is no need to add convoluted rules or instructions as the game is intuitive and played similarly to many other classic word games.

Colourised Text:

Terminal is usually viewed in a simplistic form where text is a standard primary feature. Although Hangman is a simple game, if played in such a format as that of Terminal could become monotonous. In order to not only separate the game's text from the standard Terminal text, both bold and colourised text is used to stimulate the player. This colourised text also allows the player to easily identify different information given throughout the game. For example, if a player enters a correct answer the text colour is green, whereas if the player enters answers incorrectly the text is red.

Game Text and its corresponding colours:
Game Play Instructions:     YELLOW
Exit Instructions:          BLUE
Correct Answers:            GREEN
Incorrect Answers:          RED
Winning the Game:           GREEN
Losing the Game:            RED

Colorize: https://rubygems.org/gems/colorize/versions/0.8.1

Stylised Text:

As with traditional arcade games, this game follows the 2D, 'raw' and block theme. While Terminal's options to style its themes are limiting, I have used the tty-font gem and pastel gem to allow for a grand beginning and end to the game. When the game begins there is a large 'HANGMAN' logo theme (tty-font) colourised in magenta (pastel) to welcome the player into the game. On the tail end, if the player wins the game there is a similar styled logo which announces to the player 'WELL DONE!' colourised in green. If the player loses there are told 'BAD LUCK' in red.

tty-font: https://rubygems.org/gems/tty-font
<br>
pastel: https://rubygems.org/gems/pastel

Suspense:

A great addition to any game is suspense. Similar to TV Game Shows, such as The Chaser, contestants are never immediatley informed if their answers are right or wrong but are forced to wait a short period of time which easily creates suspense. In this game, when a player enters a letter, a small spinning line in square brackets indicates that their answer is being processed. This is done by using the spinner-gem. Once the line stops spiining, of the answer is correct a tick will appear. If the answer is wrong a cross will appear. This creates a small fraction of suspense while waiting for the outcome of the players answer. 

tty-spinner: https://rubygems.org/gems/tty-spinner

Sound FX:

Another traditional arcade feature included in this game are retro arcade sound effects. There are many different sounds that are played corresponding to either awaiting a players input or the resulting output. This was made possible by using ruby2d gem.

The sound samples are royalty free and sourced from the arcade section of mixkit: https://mixkit.co/free-sound-effects/arcade/ .

ruby2d: https://rubygems.org/gems/ruby2d/versions/0.9.2

Exit Plan:

As stated at the begining of the game, the player has the ability to exit the game at any time.

Text to Speech:

As stated previously, the Game's Host will talk to the player via audio. The Host, who has a British accent, will repeat the written text making the game far more interactive. 

# OUTLINE (USER INTERACTION)

Main Menu

"New game started... your word is (number of letters) characters long."
- Indicating a new game has started.
- The first clue is given in the form of the number of letters that exist in the word.

"To exit the game at any point type 'exit'."
- Instructions how the player can exit the game while playing.

"_ _ _ _ ... _ _"
- The mystery word is revealed as a series of under scores corresponding to its number of letters.

"Clue: ..."
- The second clue is given in the form of a phrase that describes or defines the word.

Game Play

"Enter a letter..."
- The game instructs the player to begin playing and enter a letter.

"You are correct!"
- If the player answers correct, the game notifies the player and adds the correct letter into the mystery word.

"Sorry, you have (number) lives left. Try again."
- If the player answer incorrectly, the game notifies the player and the player loses a game life.

"Only guess 1 letter at a time please."
- If the player enters more the one letter at a time the game will notify the player that this is not allowed and neither add not deduct a game life.

Outcome

"Congratulations, you have won this round!"
- If the player wins the game, the player is notified.

"Game over, better luck next time."
- If the player loses the game, the player is notified. 

# CONTROL FLOW (FLOW CHART)

<img width="892" alt="Hangman-Game_Flow-Chart" src="https://user-images.githubusercontent.com/99586803/164960623-75e2b2a8-0d51-4066-a017-3add0491bede.png">

# TESTING

In the spec file 'Hangman_Spec.rb', 2 specific tests are conducted for specific sections that I wanted to implement while developing the game. 

1. The first test is determining if the number of letters that exists within the randomly chosen 'mystery word' is printed. The test refers to the array    of 'mystery words' and their corresponding 'clue phrase'. This particular test is important because it is a clue and if the player is mislead or misinformed via such a clue, the game will be unfair and any direction or instruction from the game can not be taken as a clear and accurate direction.

2. This second test is to confirm that the 'mystery word' is printed as a series of under scores that correspond to the number of letters in the 'mystery word'. Similar to the first test, it is important that the information given to the player by the game is accurate. If not the game is nonsencical and unplayable.

* In addition, there are a series of tests labelled 'Hangman-Test_#' where I have constructed source code and tested the developed code at particular sections. These tests are simple 'save file and run' style testing. This testing doesn't test the entire code but a large portion of fundamental code that was developed.

# IMPLEMENTATION PLAN

<img width="1310" alt="T1A3_Imlementation-Plan" src="https://user-images.githubusercontent.com/99586803/164960822-6c172981-88fa-4b0c-ba0f-0813b205a655.png">

# INSTALLATION 

1. Visit https://github.com/Don-Kountouris/T1A3_Terminal-Application
2. Select Code.
3. Select Download ZIP.
4. Unzip DonKountouris_T1A3.
5. Open the Terminal application and enter the cmd:
   /Users/[user_name]/DonKountouris_T1A3/src/hangman.sh
   
Alternitively, you can install the dependencies yourself:

- Rspec: v3.11
- Colorize: v8.1 (terminal cmd: gem install colorize)
- ruby2d: v9.2 (terminal cmd: gem install ruby2d -v 0.9.2)
- tty-spinner: (terminal cmd: gem install tty-spinner)
- tty-font: (terminal cmd: )
- pastel: (terminal cmd: gem install pastel)
