CREATE VIEW top_3_artistas AS 
SELECT 
A.NOME AS `artista`,
COUNT(S.ARTISTA_ID) AS `seguidores` 
FROM 
SpotifyClone.Artista AS A
INNER JOIN 
SpotifyClone.Seguindo AS S ON A.ARTISTA_ID = S.ARTISTA_ID
GROUP BY S.ARTISTA_ID
ORDER BY `seguidores` DESC, `artista`
LIMIT 3;
