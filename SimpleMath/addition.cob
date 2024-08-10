       IDENTIFICATION DIVISION.
       PROGRAM-ID. Adding.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01  A PIC 9(2) VALUE 10.
       01  B PIC 9(2) VALUE 20.
       01  C PIC 9(2) VALUE 30.
       01  RESULT PIC 9(2).
       PROCEDURE DIVISION.
           DISPLAY "A = " A.
           DISPLAY "B = " B.
           DISPLAY "C = " C.


           ADD A TO B GIVING C.
           DISPLAY "Result of A + B = " C.
      
           ADD A B C GIVING RESULT.
           DISPLAY "Result of A + B + C = " RESULT.

           STOP RUN.
      * Compile this with  cobc -x -o adding addition.cob
      *        then use ./adding to run it!