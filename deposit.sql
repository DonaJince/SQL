create or replace procedure deposits(id in int,amount in float) is
begin
	update  customer set balance=balance+amount where ano=id;
	dbms_output.put_line('balance updated');
	
end;
/
set serveroutput on;
declare
	ano int:=&ano;
	amount float :=&amount;
begin
	deposits(ano,amount);
end;
/
select * from customer;
