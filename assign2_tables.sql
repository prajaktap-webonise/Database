CREATE TABLE orders ( id INT(20), total INT(20), discount_id INT(20), final_amount INT(20), paymentmode_id INT(10), trasaction_id INT(10), order_status VARCHAR(20), user_id INT(10),order_date DATE);
INSERT INTO orders values(1,2400,1,2300,1,111,'sucessful',1,'2018-10-15');
INSERT INTO orders values(2,2400,1,50,1,112,'sucessful',3,'2018-10-16');


CREATE TABLE paymentmodes (id INT(10), mode VARCHAR(20));
INSERT INTO paymentmodes values(1,'internet banking');
INSERT INTO paymentmodes values(2,'credit card');
INSERT INTO paymentmodes values(3,'debit card');


CREATE TABLE varients ( id INT(10), name VARCHAR(20), color VARCHAR(10), size VARCHAR(10), product_id INT(10), price INT(10));
INSERT INTO varients values( 1,'blue shirt','blue', 'M',1,500);
INSERT INTO varients values( 2,'black shirt','black', 'S',1,600);
INSERT INTO varients values( 3,'red shirt','red', 'L',1,400);
INSERT INTO varients values( 4,'blue shoes','blue', '30',3,1500);
INSERT INTO varients values( 5,'blue jeans','blue', '30',2,900);
INSERT INTO varients values( 6,'blue pen','blue', null,4,50);


CREATE TABLE cart (id INT(10) AUTO_INCREMENT, product_id INT(10), varient_id INT(10), quantity INT(10), price INT(10), user_id INT(10), PRIMARY KEY(id));
INSERT INTO cart values(1,1,1,1,500,1);
INSERT INTO cart values(2,3,4,1,1500,1);
INSERT INTO cart values(3,4,6,1,50,3);
INSERT INTO cart values(4,1,3,1,400,1);


CREATE TABLE discount( id INT(10), discount_type VARCHAR(20), amount DOUBLE(4,3));
insert into discount values(1, 'flat',10);
insert into discount values(2, 'sale',20);
insert into discount values(3, 'offer',50);


CREATE TABLE products ( id INT NOT NULL PRIMARY KEY, name TEXT NOT NULL);
INSERT INTO products values( 1, 'shirt');
INSERT INTO products values( 2, 'jeans');
INSERT INTO products values( 3, 'shoes');
INSERT INTO products values( 4, 'pen');


CREATE TABLE usertypes (id INT(10) PRIMARY KEY,name VARCHAR(20));
INSERT INTO usertypes values( 1, 'buyer');
INSERT INTO usertypes values( 2, 'inventory manager');


CREATE TABLE users (id INT(10) PRIMARY KEY AUTO_INCREMENT,name VARCHAR(30),email VARCHAR(30) NOT NULL UNIQUE,password VARCHAR(20),type_id INT,CHECK (password>=8));
INSERT INTO users values(1, 'prajakta', 'prajakta.patil@gmail.com','prajakta123',1);
INSERT INTO users values(2, 'sayali', 'sayali.s@gmail.com','sayali123',2);
INSERT INTO users values(3, 'mahesh', 'mahesh@gmail.com','maheshmdpt',1);


