1. Mostrar 'Hola mundo' por pantalla.

begin

  DBMS_OUTPUT.PUT_LINE('Hola mundo');
  
end;
/

2. Declarar una variable numerica y mostrar si es mayor de 10 o no.


declare
  mi_numero number(8) := 12;
begin

  if (mi_numero > 10) then
    DBMS_OUTPUT.PUT_LINE('Mi numero es mayor de 10');
  else
    DBMS_OUTPUT.PUT_LINE('Mi numero es menor de 10');
  end if;

end;
/
3. Declarar una variable numerica y pedir su valor y mostrarlo.

declare
  mi_numero number(8) := &numero;
begin
  DBMS_OUTPUT.PUT_LINE('el valor introducido es ' || mi_numero);
end;
/

4. Mostrar los numeros del 1 al 100 con un while.

declare
  i number(8) := 1;
begin
   
  while (i<=10)
  loop
    DBMS_OUTPUT.PUT_LINE(i);
    i := i+1;
  end loop;
 
end;
/

5. Mostrar los numeros del 1 al 100 con un for.

begin
   
  for i in 1..100
  loop
    DBMS_OUTPUT.PUT_LINE(i);
  end loop;
 
end;
/
-- De 10 a 1
begin
   
  for i in reverse 1..100
  loop
    DBMS_OUTPUT.PUT_LINE(i);
  end loop;
 
end;
/

6. Mostrar los numeros del 1 al 100 con un loop.

declare
  i number(8) := 1;
begin
   
  loop
    DBMS_OUTPUT.PUT_LINE(i);
    exit when i=100;
    i := i+1;
  end loop;
 
end;
/
DECLARE
  i NUMBER(8) := 1;
  output_string VARCHAR2(4000) := '';
BEGIN
  LOOP
    output_string := output_string || i || ' ';
    EXIT WHEN i = 100;
    i := i + 1;
  END LOOP;

  DBMS_OUTPUT.PUT_LINE(output_string);
END;
/

7. Mostrar el nombre de un cliente dado su codigo.

declare
  v_codigocliente clientes.codigocliente%type := &codigo;
  v_nombrecliente clientes.nombrecliente%type;
begin
 
  select nombrecliente into v_nombrecliente
  from clientes
  where codigocliente = v_codigocliente;
 
  DBMS_OUTPUT.PUT_LINE('El nombre del cliente es ' || v_nombrecliente);
 
 
end;
/

8. Mostrar el precioVenta y la gama de un producto dado su codigo.

declare
  v_codigoproducto productos.codigoproducto%type := &codigo;
  v_nombreproducto productos.nombre%type;
  v_gamaproducto productos.gama%type;
begin
 
  select nombre, gama into v_nombreproducto, v_gamaproducto
  from productos
  where codigoproducto = v_codigoproducto;
 
  DBMS_OUTPUT.PUT_LINE('El nombre del producto es ' || v_nombreproducto
                         || ' y su gama es '  || v_gamaproducto);
 
 
end;
/ -- mal, ver correjir

9. Mostrar toda la informacion de un pedido dado su codigo (fechaEsperada, fechaEntrega, fechapedido, estado, comentarios)

declare
  v_codigopedido pedidos.codigopedido%type := &codigo;
  v_pedido pedidos%rowtype;
begin
 
  select * into v_pedido
  from pedidos
  where codigopedido = v_codigopedido;
 
  DBMS_OUTPUT.PUT_LINE('La fecha de pedido es ' || v_pedido.fechapedido
                         || ', la fecha esperada es ' || v_pedido.fechaesperada
                         || ', la fecha de entrega es ' || v_pedido.fechaentrega
                         || ', el estado es ' || v_pedido.estado
                         || ' y los comentarios son ' || v_pedido.comentarios
                         );
 
 
end;
/

10. Realizar una función que me devuelva la suma de pagos que ha realizado. Pasa el codigo por parametro.

create or replace function Pagos_cliente(v_codigocliente clientes.codigocliente%type)
return Number
as
  v_sumapagos pagos.cantidad%type := 0;
begin
   
  select sum(cantidad) into v_sumapagos
  from pagos
  where codigocliente = v_codigocliente;
 
  return v_sumapagos;
 
end;
/
 
DECLARE
  v_codigocliente clientes.codigocliente%type := &codigo;
  v_suma pagos.cantidad%type;
BEGIN
  v_suma := Pagos_cliente(v_codigocliente);
  DBMS_OUTPUT.PUT_LINE('La suma de pagos es: ' || v_suma);
  DBMS_OUTPUT.PUT_LINE(v_suma);
END;
/




