--To avoid this error :
-- -- The server time zone value 'CEST' is unrecognized or represents more than one time zone.
-- -- You must configure either the server or JDBC driver (via the 'serverT...
SET GLOBAL time_zone = '+2:00';

CREATE DATABASE restapi;
USE restapi;
CREATE TABLE blog (
  id INT(6) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  title VARCHAR(500) NOT NULL,
  content VARCHAR(5000) NOT NULL
);

INSERT INTO blog (id,title,content) VALUES (2,"My other post","Today I wanted to shate with you...");
INSERT INTO blog (id,title,content) VALUES (1,"My post","Today I wanted to talk about...");
