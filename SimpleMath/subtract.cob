       IDENTIFICATION DIVISION.
       PROGRAM-ID. Subtracting.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01  get_num1 PIC 9(3).
       01  get_num2 PIC 9(3).
       01  result  PIC 9(3).

       PROCEDURE DIVISION.
           DISPLAY "Please enter the first number: "
           ACCEPT get_num1.
           DISPLAY "Thank you! Now choose the second number: "
           ACCEPT get_num2.

           SUBTRACT get_num2 FROM get_num1 GIVING result.
           DISPLAY "First number - second number = " result.
           STOP RUN.

      *        cobc -x -o subtract subtract.cob
      *        ./subtract
      *