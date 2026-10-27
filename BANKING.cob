
       IDENTIFICATION DIVISION.
       PROGRAM-ID. BANKING.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 BALANCE-AMOUNT PIC 9(5)V99 VALUE 1000.00.
       01 CHOICE PIC 9.
       01 AMOUNT PIC 9(5)V99.

       PROCEDURE DIVISION.
       MAIN-PROGRAM.
           DISPLAY "=== SIMPLE BANKING SYSTEM ==="
           DISPLAY "1. Check Balance"
           DISPLAY "2. Deposit"
           DISPLAY "3. Withdraw"
           DISPLAY "4. Exit"
           ACCEPT CHOICE

           EVALUATE CHOICE
             WHEN 1
               DISPLAY "Balance: " BALANCE-AMOUNT
             WHEN 2
               DISPLAY "Enter deposit amount:"
               ACCEPT AMOUNT
               ADD AMOUNT TO BALANCE-AMOUNT
               DISPLAY "Deposit successful."
             WHEN 3
               DISPLAY "Enter withdrawal amount:"
               ACCEPT AMOUNT
               IF AMOUNT <= BALANCE-AMOUNT
                 SUBTRACT AMOUNT FROM BALANCE-AMOUNT
                 DISPLAY "Withdrawal successful."
               ELSE
                 DISPLAY "Insufficient balance."
               END-IF
             WHEN 4
               DISPLAY "Goodbye!"
             WHEN OTHER
               DISPLAY "Invalid choice."
           END-EVALUATE

           STOP RUN.
