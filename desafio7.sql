CREATE VIEW perfil_artistas AS
SELECT
AR.NOME AS `artista`,
AB.TITULO AS `album`,
COUNT(S.USER_ID) AS `seguidores`
FROM
SpotifyClone.Artista AS AR
JOIN
SpotifyClone.Albuns AS AB ON AR.ARTISTA_ID = AB.ARTISTA_ID
JOIN
SpotifyClone.Seguindo AS S ON AR.ARTISTA_ID = S.ARTISTA_ID
GROUP BY `artista`, `titulo`
ORDER BY `seguidores` DESC, `artista`;
