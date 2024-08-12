       IDENTIFICATION DIVISION.
       PROGRAM-ID. Simple-loop.

       PROCEDURE DIVISION.
           PERFORM THE-MESSAGE.
           STOP RUN.


           THE-MESSAGE.
               DISPLAY "A simple message that will be displayed once!".
      
      
      *    Compile with -> cobc -x -o simple simpleLoop.cob
