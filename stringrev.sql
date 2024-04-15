set serveroutput on;
declare
	str varchar(10);
	len int;
	rev varchar(10);
	i int;
begin
	 str:='&str';
	 len:=length(str);
	 for i  in reverse 1..len
	 	loop
	 		rev:=rev||substr(str,i,1);
	 	end loop;
	 dbms_output.put_line('reversed string:'||rev);
end;
/
