set serveroutput on;
create or replace  function addnum(a in number,b in number)
return number is
	s number;
begin
	s:= a+b;
	return(s);
end addnum;
/
declare
	a int:=&a;
	b int:=&b;
	r int;
begin
	r:=addnum(a,b);
	dbms_output.put_line('sum of ' || a || 'and' || b || 'is' || r);
end;
/
