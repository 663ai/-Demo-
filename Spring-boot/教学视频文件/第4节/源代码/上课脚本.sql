CREATE TABLE foods(
	id BIGINT(20) NOT NULL PRIMARY KEY AUTO_INCREMENT COMMENT '主键',
	food_name VARCHAR(40) COMMENT '食品名',
	food_taste VARCHAR(2) COMMENT '食品口味 1香辣 2微辣 3麻辣 4不辣',
	food_price FLOAT(10,2) COMMENT '食品价格',
	food_description VARCHAR(200) COMMENT '食品描述'
)

INSERT INTO foods(food_name,food_taste,food_price,food_description) VALUES('鱼香肉丝','1',18.5,'很好吃');


DELETE FROM foods WHERE id=0;


DELIMITER //
CREATE PROCEDURE pro_addManyFoods()
BEGIN
	DECLARE i INT DEFAULT 0;
	DECLARE price FLOAT(10,2) DEFAULT 0;
	WHILE i<=1000 DO
		SELECT FLOOR(RAND()*100) INTO price;
		INSERT INTO foods(food_name,food_taste,food_price,food_description) 
		VALUES(CONCAT('test',i),'1',price,'很好吃');
		SET i=i+1;
	END WHILE;
END //
DELIMITER ;

CALL pro_addManyFoods();

SELECT COUNT(*) FROM foods;

SELECT * FROM foods;--->LIST<Map<STRING,OBject>>






