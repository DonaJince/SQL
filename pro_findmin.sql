create or replace procedure findmin(i in number,j in number,res out number) is
begin
	if i<j then
		res:=i;
	else
		res:=j;
	end if;
end;
/
set serveroutput on;
declare 
	a number:=&a;
	b number:=&b;
	r number;
begin
	findmin(a,b,r);
	dbms_output.put_line('minimum of  ' || a || ' and ' || b || ' is ' || r);
end;
/
