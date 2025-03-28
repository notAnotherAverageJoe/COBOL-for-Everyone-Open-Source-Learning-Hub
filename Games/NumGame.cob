       IDENTIFICATION DIVISION.
       PROGRAM-ID. NUMSGAME.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 UserGuess PIC 9(2) VALUE 0.
       01 SecretNum PIC 9(2) VALUE 0.
       01 MaxTries PIC 9(2) VALUE 7.
       01 UserTries PIC 9(2) VALUE 0.

       PROCEDURE DIVISION.
       COMPUTE SecretNum = FUNCTION RANDOM * 99 + 1
       DISPLAY "Welcome to the random number game!".
       PERFORM GAME_LOOP.
       DISPLAY "GAME OVER! Out of attempts".
       STOP RUN.

       GAME_LOOP.
           PERFORM UNTIL UserTries >= MaxTries OR UserGuess = SecretNum
               DISPLAY "Enter a number between 1 and 99: "
               ACCEPT UserGuess
               ADD 1 TO UserTries
               IF UserGuess = SecretNum
                   DISPLAY "You WIN!"
                ELSE IF UserGuess < SecretNum
                   DISPLAY "Too low!"
                ELSE
                   DISPLAY "Too High!"
                END-IF
            END-PERFORM.
