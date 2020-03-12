-- 3. Определить кто больше поставил лайков (всего) - мужчины или женщины?

SELECT 
	  COUNT(*),
	  (SELECT gender FROM profiles p WHERE p.gender = 'm' and p.user_id = l.user_id ) as man,
	  (SELECT gender FROM profiles p WHERE p.gender = 'f'  and p.user_id = l.user_id ) as woman
FROM likes l 
GROUP BY man, woman;
					
SELECT * FROM likes l ;
SELECT * FROM profiles p WHERE user_id = 57;