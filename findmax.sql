create or replace function findmax(a in int, b in int) 
return int is
    result int;
begin
    if a > b then
        result := a;
    else 
        result := b;
    end if;
    return result;
end findmax;
/
set serveroutput on;
declare
	a int:=&a;
	b int:=&b;
	r int;
begin
	r:=findmax(a,b);
	dbms_output.put_line('maximum of ' || a || 'and' || b || 'is' || r);
end;
/

