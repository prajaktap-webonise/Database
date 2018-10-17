SELECT o.id, o.order_date,v.name,v.price,o.final_amount,u.name, u.email from orders o, varients v, users u where o.user_id = u.id and order_date >= DATE_SUB(CURDATE(),INTERVAL 30 DAY);
