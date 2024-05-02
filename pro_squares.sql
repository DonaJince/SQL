create or replace procedure squarenum(num in out number) is
begin
	num:=num*num;
end;
/
set serveroutput on;
declare
	num number:=&num;
begin
	squarenum(num);
	dbms_output.put_line('square  is ' || num);
end;
/
