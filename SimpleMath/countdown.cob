       IDENTIFICATION DIVISION.
       PROGRAM-ID. STATICCOUNTDOWN.

      *COMPLETION DATE AUGUST 25, 2024.
      *REMARKS.    THIS IS AN INTERACTIVE PROGRAM THAT IS DESIGNED
      *            TO ILLUSTRATE THE USE OF COBOL.  
      *            THIS PROGRAM WILL SHOWS AN EXAMPLE OF
      *    compile with ->  cobc -x -o down countdown.cob
      *    then run ./down
      *      

       DATA DIVISION.
       WORKING-STORAGE SECTION.

       01  COUNTDOWN PIC 99 VALUE 20.

       PROCEDURE DIVISION.
           DISPLAY "Welcome to the Cobol countdown!".
           
           PERFORM UNTIL COUNTDOWN = 0
               DISPLAY "Countdown: " COUNTDOWN
               SUBTRACT 1 FROM COUNTDOWN
           END-PERFORM.

           DISPLAY "Countdown complete!"
           STOP RUN.
