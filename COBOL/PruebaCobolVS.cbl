      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. COBOL5.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01 SI-O-NO PIC X.
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
           
           PREGUNTA.
              
               GO TO CONTINUACION.
               
               IF SI-O-NO = "N" OR SI-O-NO = "n"
                   GO TO FINALIZA-PROGRAMA
               IF SI-O-NO = "S" OR SI-O-NO = "s"   
                   PERFORM PROGRAMA   
               ELSE    
                   DISPLAY "Por favor introduce una N o una S: ".
                     
            FINALIZA-PROGRMA.
            STOP RUN.
            
            CONTINUACION.
                DISPLAY "Ejecutar el programa? (S/N): "
                ACCEPT SI-O-NO.
                
            FINALIZA-PROGRAMA.
                STOP RUN.
                
             PROGRAMA.
                 DISPLAY "Se ejecuta el programa.".
            
            
       END PROGRAM COBOL5.