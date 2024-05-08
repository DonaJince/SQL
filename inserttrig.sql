set serveroutput on;
create trigger t4 after insert or update on employee
begin
if inserting then
	 insert into testtable values('insert done', sysdate);
  else
           insert into testtable values('update done', sysdate);
end if;
end;
/
