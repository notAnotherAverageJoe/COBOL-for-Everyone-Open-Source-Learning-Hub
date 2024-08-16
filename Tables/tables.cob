       IDENTIFICATION DIVISION.
       PROGRAM-ID. TABLESONE.
      *COMPLETION DATE AUGUST 16, 2024.
      *REMARKS.    THIS IS AN INTERACTIVE PROGRAM THAT IS DESIGNED
      *            TO ILLUSTRATE THE USE OF COBOL.  
      *            THIS PROGRAM WILL SHOWS AN EXAMPLE OF TABLES IN COBOL
      *            IT PRINTS EACH GRADE IN THE TABLE.
      *    compile with ->  cobc -x -o tables tables.cob
      *    then run ./tables
      *     
       DATA DIVISION.
       WORKING-STORAGE SECTION.

       01  I                PIC 9(3) VALUE 1.
       
       01  STUDENT-MARKS.
           05  MARKS-ARRAY  OCCURS 10 TIMES PIC 99.

       PROCEDURE DIVISION.
      *    This section is moving the numbers into the array-like table. 
           MOVE 85 TO MARKS-ARRAY(1).
           MOVE 90 TO MARKS-ARRAY(2).
           MOVE 70 TO MARKS-ARRAY(3).
           MOVE 79 TO MARKS-ARRAY(4).
           MOVE 88 TO MARKS-ARRAY(5).
           MOVE 85 TO MARKS-ARRAY(6).
           MOVE 93 TO MARKS-ARRAY(7).
           MOVE 17 TO MARKS-ARRAY(8).
           MOVE 43 TO MARKS-ARRAY(9).
           MOVE 99 TO MARKS-ARRAY(10).
           DISPLAY " "
           DISPLAY " "

           DISPLAY "MARK FOR STUDENT 1 IS " MARKS-ARRAY(1).
           DISPLAY "MARK FOR STUDENT 2 IS " MARKS-ARRAY(2).
           DISPLAY "MARK FOR STUDENT 3 IS " MARKS-ARRAY(3).
           DISPLAY "MARK FOR STUDENT 4 IS " MARKS-ARRAY(4).
           DISPLAY "MARK FOR STUDENT 5 IS " MARKS-ARRAY(5).
           DISPLAY "MARK FOR STUDENT 6 IS " MARKS-ARRAY(6).
           DISPLAY "MARK FOR STUDENT 7 IS " MARKS-ARRAY(7).
           DISPLAY "MARK FOR STUDENT 8 IS " MARKS-ARRAY(8).
           DISPLAY "MARK FOR STUDENT 9 IS " MARKS-ARRAY(9).
           DISPLAY "MARK FOR STUDENT 10 IS " MARKS-ARRAY(10).
           
           DISPLAY "-------------------------------------------------"
           DISPLAY " "
           DISPLAY " "
      *    this is a way to user iteration instead of printing each one
      *    yourself.
           PERFORM VARYING I FROM 1 BY 1 UNTIL I > 10
               DISPLAY "MARK FOR STUDENT " I " IS " MARKS-ARRAY(I)
           END-PERFORM.
           DISPLAY " "
           DISPLAY " "

           STOP RUN.
