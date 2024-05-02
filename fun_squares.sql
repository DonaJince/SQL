set serveroutput on;
create or replace function square(a in  int) 
return int as
    res int;
    begin
    res := a*a;
    return res;
end square;
/

declare
	limit int:=&limit;
	r int;
	i int;
begin
	for i in 1 .. limit
	loop
		r:=square(i);
		dbms_output.put_line('square of  ' || i || ' is ' || r);
		insert into squa values(i,r);
	end loop;
end;
/
	select * from squa;
