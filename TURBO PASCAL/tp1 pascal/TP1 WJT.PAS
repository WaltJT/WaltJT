program Tp01;
var
     a,b,c,p  :real;
     edad     :integer;
     nombre   :string;
     pausa    :string;

begin
     writeln('Tp 01 ingrese su nombre: ');
     read(nombre);
     write(' ­Gracias! ');

     writeln('');
     writeln('Tp 01 ingrese su edad: ');
     readln(edad);

     writeln('');
     writeln('Ingrese 3 notas separadas en distintos renglones:');
     writeln('');
     writeln('Ingrese la primer nota:');
     readln(a);
     writeln('Ingrese la segunda nota:');
     readln(b);
     writeln('Ingrese la tercer nota:');
     readln(c);


     p = (a+b+c)/3;
     writeln('');
     writeln(nombre, ' el promedio es', p);

     writeln('Presione ENTER para terminar');
     readln(pausa)

end.
