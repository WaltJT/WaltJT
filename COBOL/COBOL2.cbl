      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. Operaciones-Basicas-COBOL2.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01 NUM1 PIC 9(4).
       01 NUM2 PIC 9(4).
       01 NUM3 PIC 9(4).
       01 NUM4 PIC 9(4).
       01 NUM5 PIC 9(4).
       01 NUM6 PIC 9(4).
       01 NUM7 PIC 9(4).
       01 NUM8 PIC 9(4).
       01 RESULTADO PIC 9(6).
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.

            DISPLAY "Introducir el primer numero: "
            ACCEPT NUM1.
            DISPLAY "Introducir el segundo numero: "
            ACCEPT NUM2.

            ADD NUM1 TO NUM2 GIVING RESULTADO.
            DISPLAY "El resultado es: ", RESULTADO.

            DISPLAY "Introducir el primer numero: "
            ACCEPT NUM3.
            DISPLAY "Introducir el segundo numero: "
            ACCEPT NUM4.

            SUBTRACT NUM3 FROM NUM4 GIVING RESULTADO.
            DISPLAY "El resultado es: ", RESULTADO.

            DISPLAY "Introducir el primer numero: "
            ACCEPT NUM5.
            DISPLAY "Introducir el segundo numero: "
            ACCEPT NUM6.

            MULTIPLY NUM5 BY NUM6 GIVING RESULTADO.
            DISPLAY "El resultado es: ", RESULTADO.

            DISPLAY "Introducir el primer numero: "
            ACCEPT NUM7.
            DISPLAY "Introducir el segundo numero: "
            ACCEPT NUM8.

            DIVIDE NUM7 BY NUM8 GIVING RESULTADO.
            DISPLAY "El resultado es: ", RESULTADO.

            STOP RUN.
       END PROGRAM Operaciones-Basicas-COBOL2.
