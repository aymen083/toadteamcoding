CREATE OR REPLACE TRIGGER MANITOU_TEST."INSERT_DEMO_ORDER_ITEMS"
BEFORE
insert ON MANITOU_TEST.DEMO_ORDER_ITEMS
for each row
begin
declare
  order_item_id number;
begin
select demo_order_items_seq.nextval into order_item_id from dual;
:new.ORDER_ITEM_ID := order_item_id;
end;
end;
/
