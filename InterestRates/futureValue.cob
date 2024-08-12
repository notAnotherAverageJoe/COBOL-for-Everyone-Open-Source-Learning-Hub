       IDENTIFICATION DIVISION.
       PROGRAM-ID. FVearning.
       *PROGRAMMER  Joseph Skokan.
      *COMPLETION DATE AUGUST 11, 2024.
      *REMARKS.    THIS IS AN INTERACTIVE PROGRAM THAT IS DESIGNED
      *            TO ILLUSTRATE THE USE OF COBOL.
      *            IT PERFORMS CALCULATIONS BASED ON USER INPUT.
      *            THE PROGRAM RETURNS INTEREST RATES.
      *        cobc -x -o fv futureValue.cob COMPILE THIS WITH
          
       ENVIRONMENT DIVISION.

       DATA DIVISION.

       WORKING-STORAGE SECTION.
       01  user-entries.   
           05 number-entered       PIC 9 VALUE 1.
           05 investment-amount    PIC 9(9)V99.
           05 number-of-years      PIC 9(2).
           05 yearly-interest-rate PIC 9(2)v9.


       01  work-fields.
           05 future-values        PIC 9(7)V99.
           05 year-counter         PIC 9(3).
           05 edited-future-value  PIC 9(9)v99.

       PROCEDURE DIVISION.
       
       000-calculate-future-value.
           PERFORM 100-calculate-future-value
               UNTIL number-entered = ZERO.
           DISPLAY "END OF SESSION"
           STOP RUN.

       100-calculate-future-value.
           DISPLAY "--------------------------------------------------"
           DISPLAY "TO END THE PROGRAM ENTER 0."
           DISPLAY "TO PERFORM ANOTHER CALCULATION, ENTER 1."
           DISPLAY "--------------------------------------------------"
           IF number-entered = 1
               PERFORM 110-get-user-values
               MOVE investment-amount TO future-values
               MOVE 1 TO year-counter
               PERFORM 120-calculate-next-fv
                   UNTIL year-counter > number-of-years
                   MOVE future-values TO edited-future-value
                   DISPLAY "Future value = " edited-future-value.

       110-get-user-values.
           DISPLAY "ENTER INVESTMENT AMOUNT: ".
           ACCEPT investment-amount.
           DISPLAY "ENTER THE NUMBER OF YEARS (XX). ".
           ACCEPT number-of-years.
           DISPLAY "ENTER YEARLY INTEREST RATE (XX.X). ".
           ACCEPT yearly-interest-rate.

       120-calculate-next-fv.
           COMPUTE future-values ROUNDED = 
               future-values +
                   (future-values * yearly-interest-rate / 100).
           ADD 1 TO year-counter.


