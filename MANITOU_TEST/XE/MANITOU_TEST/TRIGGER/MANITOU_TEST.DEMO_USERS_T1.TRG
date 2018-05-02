CREATE OR REPLACE TRIGGER MANITOU_TEST."DEMO_USERS_T1"
BEFORE
insert or update ON MANITOU_TEST.DEMO_USERS
for each row
begin
:NEW.user_name := upper(:NEW.user_name);
end;
/
