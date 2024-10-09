       IDENTIFICATION DIVISION.
       PROGRAM-ID. BUDGET-PLANNER.

      *COMPLETION DATE OCTOBER 8, 2024.
      *REMARKS.    THIS IS AN INTERACTIVE PROGRAM THAT IS DESIGNED
      *            TO ILLUSTRATE THE USE OF COBOL.  
      *            THIS PROGRAM WILL HELP YOU BUDGET YOU FINANCES.
      *            
      *    compile with ->  cobc -x -o budget budgetCalc.cob
      *    then run ./budget
      *    

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01  ANNUAL-SALARY PIC 9(6) VALUE 0.
      *    ANNUAL SALARY / 12 WILL BE MONTHLY SALARY
       01  MONTHLY-SALARY PIC 9(6) VALUE 0.
       01  RENT PIC 9(6) VALUE 0.
       01  UTILITIES PIC 9(6) VALUE 0.
       01  TRANSPORTATION PIC 9(4) VALUE 0.
       01  GROCERIES PIC 9(6) VALUE 0.
       01  ENTERTAINMENT PIC 9(6) VALUE 0.
      *    THIS IS EVERYTHING EXCEPT ENTERTAINMENT
       01  TOTAL-MANDATORY-EXPENSES PIC 9(5) VALUE 0.
      *    THIS VAR IS FOR ENTERTAINMENT AMOUNTS 
       01  TOTAL-DISCRETIONARY-EXPENSES PIC 9(5) VALUE 0.
      *    ADD MANDATORY AND DISCRECTIONARY EXPENSES 
       01  TOTAL-EXPENSES PIC 9(5) VALUE 0.
      *    MONTHLY SALARY SUBTRACTED FROM TOTAL-EXPENSES 
       01  SAVINGS PIC 9(5) VALUE 0.

       PROCEDURE DIVISION.

           PERFORM 0100-GET-USER-INFO.
           PERFORM 0500-SPACES.
           PERFORM 0200-CALCULATE-TOTAL-EXPENSES.
           PERFORM 0500-SPACES.
           PERFORM 0300-SAVINGS-FROM-MONTHLY-SALARY.
           PERFORM 0500-SPACES.
           PERFORM 0400-BUDGET.
           
           STOP RUN.


       0100-GET-USER-INFO.
           DISPLAY "Please enter you annual salary: ".
           ACCEPT ANNUAL-SALARY.

           DISPLAY "Enter your monthly rent amount: ".
           ACCEPT RENT.
           ADD RENT TO TOTAL-MANDATORY-EXPENSES.

           DISPLAY "Enter your monthly utilities amount: ".
           ACCEPT UTILITIES.
           ADD UTILITIES TO TOTAL-MANDATORY-EXPENSES

           DISPLAY "Enter your monthly transportation amount: ".
           ACCEPT TRANSPORTATION.
           ADD TRANSPORTATION TO TOTAL-MANDATORY-EXPENSES.

           DISPLAY "Enter your monthly groceries amount: ".
           ACCEPT GROCERIES.
           ADD GROCERIES TO TOTAL-MANDATORY-EXPENSES.

           DISPLAY "Enter you monthly entertainment amount: ".
           ACCEPT ENTERTAINMENT.
           ADD ENTERTAINMENT TO TOTAL-DISCRETIONARY-EXPENSES.


           DISPLAY "Mandatory Expenses: $" TOTAL-MANDATORY-EXPENSES.

       0200-CALCULATE-TOTAL-EXPENSES.
           ADD TOTAL-MANDATORY-EXPENSES TO TOTAL-EXPENSES.
           ADD TOTAL-DISCRETIONARY-EXPENSES TO TOTAL-EXPENSES.
           DISPLAY "Your total monthly expenses = $" TOTAL-EXPENSES.    
           
       0300-SAVINGS-FROM-MONTHLY-SALARY.
           COMPUTE MONTHLY-SALARY = ANNUAL-SALARY / 12.
           DISPLAY "Monthly salary: " MONTHLY-SALARY.
           SUBTRACT TOTAL-EXPENSES FROM MONTHLY-SALARY GIVING SAVINGS.
              IF MONTHLY-SALARY < TOTAL-EXPENSES
                   DISPLAY "You have no money to save."
               ELSE
                   DISPLAY "Current Savings: $" SAVINGS
               END-IF.
           
          
               
       0400-BUDGET.
           EVALUATE TRUE
               WHEN TOTAL-EXPENSES > MONTHLY-SALARY
                   DISPLAY "You are overspending! You will go broke!"
               WHEN SAVINGS < 0.1 * MONTHLY-SALARY
                   DISPLAY "You are not saving enough."
                   DISPLAY "Consider reducing discretionary expenses."
                   PERFORM 0500-SPACES
               WHEN OTHER
                   DISPLAY "You are budgeting well! Keep it up!"
                   PERFORM 0500-SPACES

           END-EVALUATE.


       0500-SPACES.
           DISPLAY "                                                  ".
           DISPLAY "                                                  ".
           DISPLAY "                                                  ".
