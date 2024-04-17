set serveroutput on;
declare
    num number := 5; 
    result number:=1;
    i int;
    n number:=num;
begin
     if n < 0 then
        dbms_output.put_line('cannot find the factorial ' );
    else
        for i in 1..n loop
            result := result * i;
        end loop;
    end if;
    dbms_output.put_line('factorial of ' || num || ' is ' || result);
end;
/

