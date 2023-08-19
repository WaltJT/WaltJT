      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. COBOL1.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01 NUM1 PIC 9(4).
       01 NUM2 PIC 9(4).
       01 RESULTADO PIC 9(6).
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
            DISPLAY "Introducir el primer numero: ".
            ACCEPT NUM1.
            DISPLAY "Introducir el segundo numero: ".
            ACCEPT NUM2.
            ADD NUM1 TO NUM2 GIVING RESULTADO.
            DISPLAY "El resultado es: ", RESULTADO.
            STOP RUN.
       END PROGRAM COBOL1.
