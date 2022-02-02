---- insert in admin table

INSERT INTO admins(email, password)  VALUES('nino.delossantos@gmail.com', '1234567');

----- insert in category table
SELECT * FROM admins;

INSERT INTO categories (category_name) VALUES ('Electronics');

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

SELECT * FROM admins
SELECT * FROM categories
SELECT * FROM products