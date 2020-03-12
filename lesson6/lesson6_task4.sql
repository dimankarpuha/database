-- 4. Найти 10 пользователей, которые проявляют наименьшую активность в использовании социальной сети.
desc media ;

SELECT user_id, COUNT(*) AS cnt
  FROM media
  GROUP BY user_id
  ORDER BY cnt DESC
  LIMIT 10;