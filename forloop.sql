set serveroutput on;
declare
	i int;
begin
	for i in 1..5
	loop
		dbms_output.put_line('hello');
	end loop;
end;
/
