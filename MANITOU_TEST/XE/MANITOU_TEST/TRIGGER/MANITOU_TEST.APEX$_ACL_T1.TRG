CREATE OR REPLACE TRIGGER MANITOU_TEST."APEX$_ACL_T1"
before insert or update on "APEX$_ACL"
for each row
begin
    --
    -- maintain pk and timestamps
    --
    :new.username := upper(:new.username);
    if inserting and :new.id is null then
        select to_number(sys_guid(),'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') into :new.id from dual;
    end if;
    if inserting then
        :new.created_on := sysdate;
        :new.created_by := nvl(v('APP_USER'),user);
        :new.updated_on := sysdate;
        :new.updated_by := nvl(v('APP_USER'),user);
    elsif updating then
        :new.updated_on := sysdate;
        :new.updated_by := nvl(v('APP_USER'),user);
    end if;
end;
/
