.open ddlPractise.sqlite 

DROP TABLE IF EXISTS books; 

CREATE TABLE books(
    id INTEGER PRIMARY KEY NOT NULL, 
    name VARCHAR(50), 
    price INTEGER, 
    disc_Price INTEGER CHECK(disc_Price>0 AND disc_Price<price), 
    description VARCHAR(1000)
);