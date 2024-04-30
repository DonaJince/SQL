create or replace procedure squares(a in out int) 
begin
    a:=a*a;
end;
/
set serveroutput on;
declare
	limit int:=&limit;
	r int;
	i int;
begin
	for i in 1 .. limit
	loop
		r:=squares(i);
		dbms_output.put_line('square of ' || i || 'is' || r);
	end loop;
end;
/

