CREATE OR REPLACE TRIGGER MANITOU_TEST."DEMO_ORDER_ITEMS_GET_PRICE"
before insert or update ON MANITOU_TEST.DEMO_ORDER_ITEMS for each row
declare
  l_list_price number;
begin
-- First, we need to get the current list price of the order line item
select list_price into l_list_price from demo_product_info
  where product_id = :new.product_id;

-- Once we have the correct price, we will update the order line with the correct price
:new.unit_price := l_list_price;

end;
/
