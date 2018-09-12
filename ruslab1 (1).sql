CREATE DATABASE lab1;

CREATE TABLE users(
  id Serial,
  firstname varchar(50),
  lastname varchar(50)
);

ALTER TABLE users  ADD COLUMN isadmin INT;

ALTER TABLE users ALTER COLUMN isadmin SET DATA TYPE BOOLEAN  ;

ALTER TABLE users ALTER COLUMN isadmin  SET DEFAULT FALSE;
 
ALTER TABLE users ADD CONSTRAINT CK PRIMARY KEY(id);

CREATE TABLE tasks(
id Serial,
name varchar(50),
user_id INT





);

DROP TABLE tasks;
DELETE DATABASE lab1 ;

