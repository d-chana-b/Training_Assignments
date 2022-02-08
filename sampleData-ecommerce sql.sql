---- insert in admin table

INSERT INTO admins(email, password)  VALUES('nino.delossantos@gmail.com', '1234567');
INSERT INTO admins(email, password)  VALUES('john@gmail.com', '6546543');
INSERT INTO admins(email, password)  VALUES('smith@gmail.com', 'AHgkjaglkal');
INSERT INTO admins(email, password)  VALUES('delossantos@yahoo.com', 'd@hhha');
INSERT INTO admins(email, password)  VALUES('michelle@atos.net', 'dhdalgfg');
INSERT INTO admins(email, password)  VALUES('chicosau@gmail.com', 'dsfkuuuu');
INSERT INTO admins(email, password)  VALUES('m.lopez@gmail.com', '1234agag5465');
INSERT INTO admins(email, password)  VALUES('sss.me@gmail.com', '17000safadfaf');
INSERT INTO admins(email, password)  VALUES('private.geo@gmail.com', '1567');
INSERT INTO admins(email, password)  VALUES('simple.email@gmail.com', '1234');


-------------------------------------------------------------------------------------
----- insert in category table
SELECT * FROM admins;

INSERT INTO categories (category_name) VALUES ('Electronics');
INSERT INTO categories (category_name) VALUES ('Health and Beauty Products');
INSERT INTO categories (category_name) VALUES ('Mens Fashion');
INSERT INTO categories (category_name) VALUES ('Women Fashion');
INSERT INTO categories (category_name) VALUES ('Sports');
INSERT INTO categories (category_name) VALUES ('Automotive Parts');

---- insert in product table

INSERT INTO products (
    product_name,
    category_id,
    product_price,
    product_image,
    product_available_qty
) VALUES (
    'Monitor',
    'CAT 0000001',
    14200.00,
    'monitor.jpg',
    51
);

INSERT INTO products(product_name,category_id,product_price,product_image,product_available_qty) 
VALUES ('SkinCare','CAT 0000021','700.00','skincare.jpg','48');
INSERT INTO products(product_name,category_id,product_price,product_image,product_available_qty) 
VALUES ('Underwear','CAT 0000022','500.00','underswear.jpg','45');
INSERT INTO products(product_name,category_id,product_price,product_image,product_available_qty) 
VALUES ('WomenBags','CAT 0000023','2000.00','womenbags.jpg','20');
INSERT INTO products(product_name,category_id,product_price,product_image,product_available_qty) 
VALUES ('Basketball','CAT 0000024','999.00','basketball.jpg','15');
INSERT INTO products(product_name,category_id,product_price,product_image,product_available_qty) 
VALUES ('Engineoil','CAT 0000025','650.00','engineoil.jpg','35');

-------------------------------------------------------

--insert in customer table
INSERT INTO customers(customer_name,email,password) VALUES('jibril','jibril@gmail.com','12345');
INSERT INTO customers(customer_name,email,password) VALUES('sora','ngnolife@gmail.com','12345');
INSERT INTO customers(customer_name,email,password) VALUES('mickey','kh3@gmail.com','12345')

-------------------------------------------------------

-- insert in cart table

INSERT INTO carts(customer_id) VALUES ('C 0000002');
INSERT INTO carts(customer_id) VALUES ('C 0000003');
INSERT INTO carts(customer_id) VALUES ('C 0000004');

------------------------------------------------------

-- insert in cart item
INSERT INTO cart_items(cart_id, customer_id, product_id, product_qty)
VALUES('CA 0000002','C 0000002','P 0000002',1);
INSERT INTO cart_items(cart_id, customer_id, product_id, product_qty)
VALUES('CA 0000003','C 0000003','P 0000023',1);
INSERT INTO cart_items(cart_id, customer_id, product_id, product_qty)
VALUES('CA 0000004','C 0000004','P 0000024',3);




SELECT * FROM admins
SELECT * FROM categories
SELECT * FROM products