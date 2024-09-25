       IDENTIFICATION DIVISION.
       PROGRAM-ID. COPYBOOKS.
      *COMPLETION DATE SEPTEMBER 25, 2024.
      *AUTHOR. Joseph Skokan.
      *REMARKS.    THIS IS AN INTERACTIVE PROGRAM THAT IS DESIGNED
      *            TO ILLUSTRATE THE USE OF COBOL.  
      *            THIS PROGRAM WILL SHOWS AN EXAMPLE OF COPYBOOKS USE
      *            WITHIN COBOL!
      *    compile with ->  cobc -x -o main main.cob
      *    then run ./main
      *     

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01  CHOICE1 PIC X(1).

       COPY 'dry.cpy'.

       PROCEDURE DIVISION.
      * Using customers from the dry.cpy file.
           DISPLAY "Enter customers first name: ".
           ACCEPT FIRST-NAME.
           DISPLAY "Enter customers last name: ".
           ACCEPT LAST-NAME.
           DISPLAY "Enter customer age: ".
           ACCEPT AGE.

           DISPLAY "Customer Created!".
           DISPLAY "Would you like to see the customers details? (Y/N)".
           ACCEPT CHOICE1.
           IF CHOICE1 = 'Y'
                DISPLAY "Customer Info: "
                DISPLAY "Customer's First Name: " FIRST-NAME
                DISPLAY "Customer's Last Name: " LAST-NAME
                DISPLAY "Customer's Age: " AGE 
           ELSE
                DISPLAY "Have a nice day!"
           END-IF.
     
             
          
           STOP RUN.

