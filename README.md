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
pastel: https://rubygems.org/gems/pastel
