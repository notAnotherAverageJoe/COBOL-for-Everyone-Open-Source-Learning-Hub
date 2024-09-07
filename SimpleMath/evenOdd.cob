       IDENTIFICATION DIVISION.
       PROGRAM-ID. EVENorODD.

       DATA DIVISION.
       WORKING-STORAGE SECTION.

       01  number-to-check     PIC 9(6).

       PROCEDURE DIVISION.
           DISPLAY "Please enter the number to be checked: ".
           ACCEPT number-to-check.
           IF FUNCTION MOD(number-to-check 2) = 0
               DISPLAY number-to-check " is an Even Number!"
           ELSE
               DISPLAY number-to-check " is an Odd Number!"
           END-IF.

           STOP RUN.
