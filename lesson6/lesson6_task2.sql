
-- 2. Подсчитать общее количество лайков, которые получили 10 самых молодых пользователей.
USE vk;

SELECT 
	(SELECT birthday 
	 FROM profiles p2 
	 WHERE p2.user_id = l.target_id ) AS birthday,
	(SELECT CONCAT (u2.first_name, ' ', u2.last_name) 
	 FROM users u2 
	 WHERE u2.id = l.target_id ) AS name,
	COUNT(*),
	l.target_id 
FROM likes l
WHERE target_type_id = 2 
GROUP BY l.target_id 
ORDER BY birthday DESC LIMIT 10;
