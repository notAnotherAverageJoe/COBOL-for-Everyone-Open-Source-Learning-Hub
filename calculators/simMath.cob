              IDENTIFICATION DIVISION.
       PROGRAM-ID. CALCUL1.
      *PROGRAMMER  Joseph Skokan.
      *COMPLETION DATE AUGUST 10, 2024.
      *REMARKS.    THIS IS AN INTERACTIVE PROGRAM THAT IS DESIGNED
      *            TO ILLUSTRATE THE USE OF COBOL.
      *            IT PERFORMS BASIC CALCULATIONS BASED ON USER INPUT.
      *        compile with cobc -x -o simmath simMath.cob
       
       DATA DIVISION.
       
       WORKING-STORAGE SECTION.
       01  END-OF-SESSION-SWITCH PIC X VALUE "N".
       01  NUM1 PIC 9(9)V99.
       01  NUM2 PIC 9(9)V99.
       01  RESULT PIC 9(9)V99.
       01  OP PIC X VALUE "+".
       
       PROCEDURE DIVISION.
           PERFORM 000-USE-CALCULATOR
               UNTIL END-OF-SESSION-SWITCH = "Y".
           DISPLAY "END OF SESSION".
           STOP RUN.
       
       000-USE-CALCULATOR.
           DISPLAY "-------------------------------------------------"
           DISPLAY "TO END PROGRAM ENTER 000."
           DISPLAY "PLEASE ENTER THE FIRST NUMBER: "
           ACCEPT NUM1
           IF NUM1 = 0
               MOVE "Y" TO END-OF-SESSION-SWITCH
           ELSE
               DISPLAY "PLEASE ENTER THE SECOND NUMBER: "
               ACCEPT NUM2
               DISPLAY "PLEASE CHOOSE AN OPERATION '+', '-', '*', '/' "
               ACCEPT OP
               IF OP = "+"
                   PERFORM 100-ADD
               ELSE IF OP = "-"
                   PERFORM 200-SUBTRACT
               ELSE IF OP = "*"
                   PERFORM 300-MULTIPLY
               ELSE IF OP = "/"
                   PERFORM 400-DIVIDE
               ELSE
                   DISPLAY "INVALID OPERATION. TRY AGAIN."
               END-IF
           END-IF.
       
       100-ADD.
           COMPUTE RESULT ROUNDED = NUM1 + NUM2
           DISPLAY "RESULT = " RESULT.
       
       200-SUBTRACT.
           COMPUTE RESULT ROUNDED = NUM1 - NUM2
           DISPLAY "RESULT = " RESULT.
       
       300-MULTIPLY.
           COMPUTE RESULT ROUNDED = NUM1 * NUM2
           DISPLAY "RESULT = " RESULT.
       
       400-DIVIDE.
           IF NUM2 = 0
               DISPLAY "ERROR: DIVISION BY ZERO."
           ELSE
               COMPUTE RESULT ROUNDED = NUM1 / NUM2
               DISPLAY "RESULT = " RESULT
           END-IF.
       