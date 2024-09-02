       IDENTIFICATION DIVISION.
       PROGRAM-ID. COUNTER.

      *COMPLETION DATE SEPTEMBER 1, 2024.
      *REMARKS.    THIS IS AN INTERACTIVE PROGRAM THAT IS DESIGNED
      *            TO ILLUSTRATE THE USE OF COBOL.  
      *            THIS PROGRAM WILL SHOWS AN EXAMPLE OF
      *            A SIMPLE COUNTER PROGRAM.
      *    compile with ->  cobc -x -o up countup.cob
      *    then run ./down
      *    

       DATA DIVISION.
       WORKING-STORAGE SECTION.

       01  COUNTER PIC 99 VALUE 1.

       PROCEDURE DIVISION.
           DISPLAY "Welcome to the simple counting program!"

           PERFORM UNTIL COUNTER = 26
               DISPLAY "Counter: ", COUNTER
               ADD 1 TO COUNTER
           END-PERFORM.

           DISPLAY "Counting complete!"
           STOP RUN.
