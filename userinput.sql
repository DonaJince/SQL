set serveroutput on;
declare
	num int:=&num;
begin
	if(num>10) then
		dbms_output.put_line('num is greater');
	end if;
end;
/
