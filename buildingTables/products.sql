/*.open ddlPractise.sqlite

DROP TABLE IF EXISTS product; 

CREATE TABLE product(
    product_id INTEGER PRIMARY KEY NOT NULL,
    product_name TEXT NOT NULL, 
    list_price DECIMAL (10,2) NOT NULL CHECK(list_price >=0),
    discount DECIMAL (10,2) NOT NULL CHECK(discount >=0), 
    CHECK(list_price >= discount)
);

INSERT INTO product(product_name, list_price, discount) 
    VALUES('watermelon', '10.50', '4.50');
*/ 