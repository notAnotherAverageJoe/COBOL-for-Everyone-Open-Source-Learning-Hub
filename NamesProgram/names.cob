       IDENTIFICATION DIVISION.
       PROGRAM-ID. NamesProgram.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 USER_NAME PIC X(6).
      *Change the number in PIC X(Your num here) to get your full name!

       PROCEDURE DIVISION.
           DISPLAY 'Please enter your name: '.
           ACCEPT USER_NAME.
           
           DISPLAY 'HELLO, ' USER_NAME ', AND WELCOME TO COBOL!'.
           STOP RUN.
      * if you named your file names.cob like me, compile with this
      *        cobc -x -o names names.cob