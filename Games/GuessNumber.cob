       IDENTIFICATION DIVISION.
       PROGRAM-ID. GuessNumberGame.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01  UserGuess pic 9(2).
       01  SecretNum pic 9(2) VALUE 83.
       01  NumTries  pic 9(2) VALUE 0.
       01  MaxTries  pic 9(2) VALUE 5.

       PROCEDURE DIVISION.
           DISPLAY "Welcome to the Guess the Number Game!"
           PERFORM GAME_LOOP.
           DISPLAY "Game OVER!".
           STOP RUN.

           GAME_LOOP.
           PERFORM UNTIL NumTries >= MaxTries OR UserGuess = SecretNum 
      
           DISPLAY "Enter your guess (1-99): ".
           ACCEPT UserGuess
           ADD 1 TO NumTries
           IF UserGuess = SecretNum
               DISPLAY "Contratulations! You have guess the num!"
              
           ELSE IF UserGuess > SecretNum
               DISPLAY "Guess is to High!"
           ELSE IF UserGuess < SecretNum
               DISPLAY "Guess is to low!"
           ELSE 
               DISPLAY "TRY Again"
           END-IF.
           END-PERFORM.
                   DISPLAY "Sorry, you've used all your tries."
           STOP RUN.

                  
