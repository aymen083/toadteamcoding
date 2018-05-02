CREATE OR REPLACE TRIGGER MANITOU_TEST."BI_DEMO_USERS"
BEFORE
insert ON MANITOU_TEST.DEMO_USERS
for each row
begin
begin
  for c1 in (
    select DEMO_USERS_SEQ.nextval next_val
    from dual
  ) loop
    :new.USER_ID :=  c1.next_val;
    :new.admin_user := 'N';
    :new.created_on := sysdate;
  end loop;
end;
end;
/
