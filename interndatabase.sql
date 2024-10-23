CREATE DATABASE interndatabase;

USE interndatabase;

CREATE TABLE intern_table (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255)
);
DELIMITER $$

CREATE PROCEDURE AddRandomRecords()
BEGIN
    DECLARE i INT DEFAULT 1;
    WHILE i <= 10000 DO
        INSERT INTO intern_table (name) VALUES (CONCAT('Name', i));
        SET i = i + 1;
    END WHILE;
END $$

DELIMITER ;

CALL AddRandomRecords();
