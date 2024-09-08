       IDENTIFICATION DIVISION.
       PROGRAM-ID. UNTIL_LOOP.
      *PROGRAMMER  Joseph Skokan.
      *COMPLETION DATE SEPTEMBER 7, 2024.
      *REMARKS.    THIS IS AN INTERACTIVE PROGRAM THAT IS DESIGNED
      *            TO ILLUSTRATE THE USE OF COBOL.
      *            THIS PROGRAM IS A SIMPLE EXAMPLE OF A 
      *            PERFORM UNTIL LOOP.
      *        compile with cobc -x -o until perform_until.cob 
       
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       
       01  NOT_YET_40  PIC 99 VALUE 0.
       
       PROCEDURE DIVISION.
           DISPLAY "COUNTING UNTIL NOT YET 40 IS NOT LONG TRUE!".
           PERFORM UNTIL NOT_YET_40 > 39
               ADD 1 TO NOT_YET_40
               DISPLAY "COUNT: " NOT_YET_40
           END-PERFORM.
           STOP RUN.
       