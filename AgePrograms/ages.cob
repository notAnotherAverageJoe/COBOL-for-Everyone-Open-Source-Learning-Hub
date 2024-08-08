       IDENTIFICATION DIVISION.
       PROGRAM-ID. GetAgeProgram.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
      * PIC 9(#) tells cobol that it will get a number with a max of. 
      * 3 digits.                                           
       01  get_age PIC 9(3).
         

       PROCEDURE DIVISION.
           DISPLAY "Please enter your age! --> ".
           ACCEPT get_age.
      *    A Simple if else section.
           IF get_age > 21
               DISPLAY "Come on in! Get Yourself a DRINK."
           ELSE IF get_age >= 18
               DISPLAY "You can enter the club, but no drinking!"
           ELSE
               DISPLAY "You are too young to enter the club."
           END-IF.
      *    small quirk here, hit the return key adter STOP RUN. 
      *    ages.cob:23: warning: line not terminated by a newline 
      *    [-Wothers] Had this error because of it
           STOP RUN.
