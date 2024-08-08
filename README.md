# Data Representation Characters:

X: Any character (e.g., PIC X(10) for a 10-character string, up to 30).
9: Numeric character (e.g., PIC 9(5) for a 5-digit number).
A: Alphabetic character (e.g., PIC A(3) for a 3-letter string).
Arithmetic Positioning Characters:
S: Sign (e.g., PIC S9(4) for a signed 4-digit number).
V: Implied decimal point (e.g., PIC 9V99 for a number with two decimal places).
P: Scaling position (e.g., PIC 99PPP for a number scaled by 1,000).

# Numeric Editing Characters:

-: Minus sign (e.g., PIC -9(3) for a signed 3-digit number).
+: Plus sign (e.g., PIC +9(3) for a signed 3-digit number with explicit sign).
.: Actual decimal point (e.g., PIC 9.99 for a number with a visible decimal point).
Z: Zero suppression (e.g., PIC ZZZ9 to suppress leading zeros).
,: Comma (e.g., PIC 9,999 for a number with a comma separator).
$: Dollar sign (e.g., PIC $9,999 for currency formatting).
