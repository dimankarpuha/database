USE vk;

#task 1
UPDATE users SET
	created_at = CURRENT_TIMESTAMP(), 
	updated_at = CURRENT_TIMESTAMP();
	

#task 2
ALTER TABLE users MODIFY COLUMN created_at VARCHAR(30);
UPDATE users SET created_at = "20.10.2017 8:10";

# сначала форматируем строку к нужному формату
UPDATE users SET created_at = STR_TO_DATE(created_at ,'%d.%m.%Y %H:%i');
# преобразуем к DATETIME
ALTER TABLE users MODIFY COLUMN created_at DATETIME;


#task 3
# create table storehouses_products
CREATE TABLE storehouses_products 
	(id SERIAL,
	value INT UNSIGNED);
DESC storehouses_products;
INSERT INTO storehouses_products (value)
	VALUES (1),(344),(45),(65),(7678),(0),(234),(5),(0),(234),(0);

SELECT * FROM storehouses_products ORDER BY CASE WHEN value = 0 THEN TRUE END, value;


