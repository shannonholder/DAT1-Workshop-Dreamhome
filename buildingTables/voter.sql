/*.open ddlPractise.sqlite

DROP TABLE IF EXISTS voter; 

CREATE TABLE voter(
    voter_id INTEGER PRIMARY KEY NOT NULL, 
    name TEXT, 
    age INTEGER CHECK(age>=18),
    dob DATE CHECK(voter_id BETWEEN 101 AND 106)
);
*/