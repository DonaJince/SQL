set serveroutput on;
declare
	r int:=&radius;
	pi float:=3.14;
	area float;
	i int;
begin
	if(r>0) then
		area:=pi;
		for i in 1..2
			loop
				area:=area*r;
			end loop;
		dbms_output.put_line('area is '|| area);
	else 
		dbms_output.put_line('area cannot be found');
	end if;
end;
/
