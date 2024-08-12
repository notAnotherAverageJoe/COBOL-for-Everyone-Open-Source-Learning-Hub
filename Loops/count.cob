       IDENTIFICATION DIVISION.
       PROGRAM-ID. SimpleCount.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01  COUNTER PIC 9(2) VALUE 0.

       PROCEDURE DIVISION.
           PERFORM COUNTING 10 TIMES.
           STOP RUN.

       COUNTING.
           ADD 1 TO COUNTER.
           DISPLAY COUNTER.
           
      *      compile ->  $ cobc -x -o count count.cob
      *        run -> ./count