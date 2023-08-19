      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. COBOL3.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01 NUM1 PIC 9(4).
       01 NUM2 PIC 9(4).
       01 RESULTADO PIC 9(6).
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
       PERFORM INTRODUCIR-Y-CALCULAR UNTIL NUM1 = '0' AND NUM2 = '0'.
       DISPLAY "Fin del programa."
       STOP RUN.

       INTRODUCIR-Y-CALCULAR.
       DISPLAY "Introducir el primer numero (0 para salir): "
       ACCEPT NUM1.

       IF NUM1 NOT = 0
        DISPLAY "Introducir el segundo numero: "
        ACCEPT NUM2

        ADD NUM1 TO NUM2 GIVING RESULTADO
        DISPLAY "El resultado de la suma es: ", RESULTADO

        SUBTRACT NUM1 FROM NUM2 GIVING RESULTADO
        DISPLAY "El resultado de la resta es: ", RESULTADO

        MULTIPLY NUM1 BY NUM2 GIVING RESULTADO
        DISPLAY "El resultado de la multiplicacion es: ", RESULTADO

        IF NUM2 NOT = 0
            DIVIDE NUM1 BY NUM2 GIVING RESULTADO
            DISPLAY "El resultado de la division es: ", RESULTADO
        ELSE
            DISPLAY "Error: No se puede dividir por cero."
         END-IF
       END-IF.
       STOP RUN.
