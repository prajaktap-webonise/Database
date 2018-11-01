DELIMITER //
CREATE PROCEDURE makepayment(IN uid int,IN oid int)
begin
INSERT INTO orders(order_status,trasaction_id,paymentmode_id) values("successful", 111, 1);
end
//

DELIMITER //
create procedure makeeeorders(INOUT uid int) 
begin
DECLARE total int(10);
DECLARE final_price int(10);
DECLARE did int(10);
SELECT SUM(price) INTO total FROM cart;

IF total<1000 THEN
set did = 1;
ELSEIF (total <=2000 AND total >= 1000) THEN
SET did = 2;
ELSEIF (total > 2000) THEN
SET did = 3;
END IF;
IF did=1 THEN
SET final_price = total - 100;
ELSEIF did=2 THEN
SET final_price = total - 200;
ELSEIF did=3 THEN
SET final_price = total - 300;
END IF;
INSERT INTO orders values(1,total,did,final_price,1,111,"succesful", uid, current_date());
call makepayment(uid);
end//

