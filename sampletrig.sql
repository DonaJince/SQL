set serveroutput on;
create or replace trigger trig  after insert on xy
begin
if inserting 
then insert into ab values('row is created',SYSDATE);
end if;
end;
/
