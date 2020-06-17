-- -- To avoid this error :
-- -- The server time zone value 'CEST' is unrecognized or represents more than one time zone.
-- -- You must configure either the server or JDBC driver (via the 'serverT...
-- -- SET GLOBAL time_zone = '+2:00';


CREATE DATABASE restapi;
USE restapi;
CREATE TABLE blog (
  id INT(6) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  title VARCHAR(500) NOT NULL,
  content VARCHAR(5000) NOT NULL
);

INSERT INTO blog (title,content) VALUES ("My post","Today I wanted to talk about...");
INSERT INTO blog (title,content) VALUES ("My other post","Today I wanted to shate with you...");
INSERT INTO blog (title,content) VALUES ("My 3th post","Today I wanted to  do a rest...");

CREATE USER 'restapi_root'@'localhost' IDENTIFIED BY 'rest_api_password';

GRANT ALL PRIVILEGES ON restapi.* TO 'restapi_root'@'localhost';
FLUSH PRIVILEGES;




