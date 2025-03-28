       IDENTIFICATION DIVISION.
       PROGRAM-ID. RandomNumGame.
       
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 NumTries PIC 9(2) VALUE 0.
       01 SecretNum PIC 9(2) VALUE 77.
       01 UserGuess PIC 9(2) VALUE 0.
       01 MaxTries PIC 9(1) VALUE 5.
       
       PROCEDURE DIVISION.
           DISPLAY "Welcome to the random number game!".
           PERFORM GAME_LOOP.
           DISPLAY "GAME OVER! Your are out of attempts".
           STOP RUN.
       
       GAME_LOOP.
           PERFORM UNTIL NumTries >= MaxTries OR UserGuess = SecretNum
               DISPLAY "Enter a number between 1 AND 99: "
               ACCEPT UserGuess
               ADD 1 TO NumTries
               IF UserGuess = SecretNum
                   DISPLAY "CONGRATULATIONS! IT WAS " SecretNum
               ELSE IF UserGuess < SecretNum 
                   DISPLAY "Too Low! Try again!"
               ELSE 
                   DISPLAY "Too High! Try again!"
               END-IF
           END-PERFORM.
        
       

       
