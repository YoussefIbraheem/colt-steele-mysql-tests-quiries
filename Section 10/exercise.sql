CREATE TABLE exercise_section_10(
id int PRIMARY KEY AUTO_INCREMENT,
post_code CHAR(5),
item_name VARCHAR(255),
price DECIMAL(7,2),
quantity BIGINT

);

-- DATETIME: is best used in cases that might require longer range of dates such as date of birth or delivery date for a product
-- TIMESTAMP: is best used in cases that might require smaller range of dates such as post created/updated at which makes perfect match for auto create and default values

SELECT CURTIME() as `current_time` FROM people;
SELECT CURDATE() as `current_date` FROM people;
SELECT DAYOFWEEK(CURDATE()) , DAYNAME(CURDATE()) `num_of_date_in_week` FROM people;
SELECT DATE_FORMAT(NOW() , "%m/%d/%Y %T")  FROM people;
SELECT DATE_FORMAT(NOW() , "%M %D at %H:%i");

CREATE TABLE tweets (
id int PRIMARY KEY AUTO_INCREMENT,
tweet VARCHAR(180),
username VARCHAR(20),
created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);