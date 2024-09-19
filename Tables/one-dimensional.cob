       IDENTIFICATION DIVISION.
       PROGRAM-ID. TableExample.

      *COMPLETION DATE SEPTEMBER 18, 2024.
      *AUTHOR. Joseph Skokan.
      *REMARKS.    THIS IS AN INTERACTIVE PROGRAM THAT IS DESIGNED
      *            TO ILLUSTRATE THE USE OF COBOL.  
      *            THIS PROGRAM WILL SHOWS AN EXAMPLE OF TABLES IN COBOL
      *            IT PRINTS A SIMPLE COUNT.
      *    compile with ->  cobc -x -o oneD one-dimensional.cob
      *    then run ./oneD
      *     
       
       DATA DIVISION.
       WORKING-STORAGE SECTION.
           
       01  I PIC 9(2) VALUE 1.

       01  THE-ARRAY.
           05 COUNTING-ARRAY OCCURS 10 TIMES PIC 99.
       PROCEDURE DIVISION.
           MOVE 10 TO COUNTING-ARRAY(1).
           MOVE 20 TO COUNTING-ARRAY(2).
           MOVE 30 TO COUNTING-ARRAY(3).
           MOVE 40 TO COUNTING-ARRAY(4).
           MOVE 50 TO COUNTING-ARRAY(5).
           MOVE 60 TO COUNTING-ARRAY(6).
           MOVE 70 TO COUNTING-ARRAY(7).
           MOVE 80 TO COUNTING-ARRAY(8).
           MOVE 90 TO COUNTING-ARRAY(9).
           MOVE 99 TO COUNTING-ARRAY(10).

           PERFORM VARYING I FROM 1 BY 1 UNTIL I > 10
               DISPLAY "COUNT-ARRAY " I " IS " COUNTING-ARRAY(I)
           END-PERFORM.
           DISPLAY " "
           DISPLAY " "
           STOP RUN.
           


       