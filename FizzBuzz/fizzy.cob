       IDENTIFICATION DIVISION.
       PROGRAM-ID. FizzBuzzProgram.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01  fizz_total PIC 9(4).
       01  i          PIC 9(4).

       PROCEDURE DIVISION.
           DISPLAY "Enter the total number for FizzBuzz: ".
           ACCEPT fizz_total.
           IF fizz_total IS NUMERIC
               PERFORM VARYING i FROM 1 BY 1 UNTIL i > fizz_total
                   IF FUNCTION MOD(i 3) = 0 AND FUNCTION MOD(i 5) = 0
                       DISPLAY "FizzBuzz!"
                   ELSE IF FUNCTION MOD(i 5) = 0
                       DISPLAY "Buzz!"
                   ELSE IF FUNCTION MOD(i 3) = 0
                       DISPLAY "Fizz!"
                   ELSE    
                       DISPLAY i
                   END-IF  
               END-PERFORM
           ELSE
               DISPLAY "Invalid input, please try again!"
           END-IF  
           STOP RUN.
           