/*.open ddlPractise.sqlite

DROP TABLE IF EXISTS contact; 

CREATE TABLE contact (
    contacts_id INTEGER PRIMARY KEY NOT NULL, 
    first_name TEXT NOT NULL, 
    last_name TEXT NOT NULL, 
    email TEXT, 
    phone TEXT NOT NULL CHECK(length (phone) = 10)
);

INSERT INTO contact (first_name, last_name, email, phone) 
VALUES('Shannon', 'Holder', 'Shannon.Holder@ada.ac.uk', '12345678');
*/