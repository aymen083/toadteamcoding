CREATE OR REPLACE TRIGGER MANITOU_TEST."UPDATE_ORDER_TOTAL"
after insert or update or delete ON MANITOU_TEST.DEMO_ORDER_ITEMS
begin

-- Update the Order Total when any order item is changed

update demo_orders set order_total =
  (select sum(unit_price*quantity) from demo_order_items
    where demo_order_items.order_id = demo_orders.order_id);
end;
/
