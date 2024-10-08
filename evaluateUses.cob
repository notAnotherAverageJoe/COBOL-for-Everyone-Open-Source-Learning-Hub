       IDENTIFICATION DIVISION.
       PROGRAM-ID. EvalUse.
      *COMPLETION DATE OCTOBER 7, 2024.
      *AUTHOR. Joseph Skokan.
      *REMARKS.    THIS IS AN INTERACTIVE PROGRAM THAT IS DESIGNED
      *            TO ILLUSTRATE THE USE OF COBOL.  
      *            THIS PROGRAM WILL SHOWS AN EXAMPLE OF EVALUATE USES
      *    compile with ->  cobc -x -o eval evaluateUses.cob
      *    then run ./eval
      *     

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01  INPUT-COMPARE PIC X(4).
       PROCEDURE DIVISION.
           DISPLAY "ENTER A FOUR DIGIT VALUE: ".
           ACCEPT INPUT-COMPARE.
          
           EVALUATE TRUE
               WHEN INPUT-COMPARE = 1000
                   DISPLAY "Value is 1000 is a Solid number"
               WHEN INPUT-COMPARE = 2000
                   DISPLAY "Value is 2000 is better than 1000!"
               WHEN INPUT-COMPARE = 3000
                   DISPLAY "Value is 3000 wow 3000 is the best so far"
               WHEN OTHER
                   DISPLAY "Value is " INPUT-COMPARE 
           END-EVALUATE.
           STOP RUN.

      