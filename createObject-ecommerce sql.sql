---creating table admin

CREATE TABLE admins(admin_id varchar2(20) constraint pk_admin_id primary key, email varchar2(50) unique , password varchar2(50) not null          
);
CREATE SEQUENCE admin_id_seq;

CREATE OR REPLACE TRIGGER adm_tgr
    BEFORE INSERT
    ON admins
    REFERENCING NEW AS NEW OLD AS OLD
    FOR EACH ROW
BEGIN
    IF :NEW.admin_id IS NULL THEN
        SELECT 'A'||TO_CHAR(admin_id_seq.NEXTVAL,'0000000') INTO :NEW.admin_id FROM DUAL;
    END IF;
END;
----------------------------------------------------------------------------------

---creating categories table

CREATE TABLE categories(category_id varchar2(20) constraint pk_category_id primary key, category_name varchar2(50))
CREATE SEQUENCE category_id_seq;

CREATE OR REPLACE TRIGGER cat_tgr
    BEFORE INSERT
    ON categories
    REFERENCING NEW AS NEW OLD AS OLD
    FOR EACH ROW
BEGIN
    IF :NEW.category_id IS NULL THEN
        SELECT 'CAT'||TO_CHAR(category_id_seq.NEXTVAL,'0000000') INTO :NEW.category_id FROM DUAL;
    END IF;
END;


---------------------------------------------------------------------------------

--- creating product table

CREATE TABLE products(product_id varchar2(20) constraint pk_product_id primary key , product_name varchar2(50), category_id varchar(20) not null , product_price number(12,2), product_image varchar2(20), product_available_qty varchar2(50),
                        constraint fk_category foreign key (category_id) references categories(category_id)
);

CREATE SEQUENCE product_id_seq;

CREATE OR REPLACE TRIGGER prod_tgr
    BEFORE INSERT
    ON products
    REFERENCING NEW AS NEW OLD AS OLD
    FOR EACH ROW
BEGIN
    IF :NEW.product_id IS NULL THEN
        SELECT 'P'||TO_CHAR(product_id_seq.NEXTVAL,'0000000') INTO :NEW.product_id FROM DUAL;
    END IF;
END;
------------------------------------------------------

