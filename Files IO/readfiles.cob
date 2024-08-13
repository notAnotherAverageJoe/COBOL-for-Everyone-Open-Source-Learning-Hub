       IDENTIFICATION DIVISION.
       PROGRAM-ID. PrintFile.
      *    compile with ->  cobc -x -o readfiles readfiles.cob
      *    then run ./readfiles
      *     
       ENVIRONMENT DIVISION.
       INPUT-OUTPUT SECTION.
       FILE-CONTROL.
           SELECT EMPLOYEE-FILE ASSIGN TO "employee.dat"
               ORGANIZATION IS LINE SEQUENTIAL.
       
       DATA DIVISION.
       FILE SECTION.
       FD  EMPLOYEE-FILE.
       01  EMPLOYEE-RECORD.
           05 EMP-ID           PIC X(5).
           05 EMP-NAME         PIC X(30).
           05 EMP-POSITION     PIC X(15).
           05 EMP-HOURLY-RATE  PIC 9(5)V99.
           05 EMP-SALARY       PIC 9(7)V99.
           05 EMP-TAX-RATE     PIC 9(5)V99.
           05 EMP-DEDUCTIONS   PIC 9(7)V99.
       
       WORKING-STORAGE SECTION.
       01  EOF                PIC X VALUE "N".
       
       PROCEDURE DIVISION.
       0001-MAIN.
           OPEN INPUT EMPLOYEE-FILE
           PERFORM UNTIL EOF = "Y"
               READ EMPLOYEE-FILE
                   AT END
                       MOVE "Y" TO EOF
                   NOT AT END
                       DISPLAY EMPLOYEE-RECORD
               END-READ
           END-PERFORM
           CLOSE EMPLOYEE-FILE
           STOP RUN.
       