CREATE TABLE products ( id INT NOT NULL PRIMARY KEY, name TEXT NOT NULL);


CREATE TABLE colors (id INT(10) PRIMARY KEY,name VARCHAR(20));


CREATE TABLE product_color (id INT(10) PRIMARY KEY,price INT(20),color_id INT,product_id INT,FOREIGN KEY (color_id) REFERENCES color(id),FOREIGN KEY (product_id) REFERENCES product(id)


CREATE TABLE product_order (id INT(10) PRIMARY KEY,order_id,productcolor_id INT,quantity INT(10),total INT(10),FOREIGN KEY (order_id) REFERENCES order(id),FOREIGN KEY (productcolor_id) REFERENCES product_color(id));


CREATE TABLE usertypes (id INT(10) PRIMARY KEY,name VARCHAR(20));


CREATE TABLE users (id INT(10) PRIMARY KEY AUTO_INCREMENT,name VARCHAR(30),email VARCHAR(30) NOT NULL UNIQUE,password VARCHAR(20),type_id INT,CHECK (password>=8));


CREATE TABLE order (id INT(10) PRIMARY KEY,user_id INT(20),cost INT(10),FOREIGN KEY (user_id) REFERENCES users(id));


