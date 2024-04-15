set serveroutput on;
declare
	r int:=&radius;
	pi float:=3.14;
	area float;
begin
	area:=pi*r*r;
	dbms_output.put_line('area is '|| area);
end;
/
