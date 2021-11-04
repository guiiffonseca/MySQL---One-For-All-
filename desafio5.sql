CREATE VIEW top_2_hits_do_momento AS 
SELECT
M.TITULO_MUSICA AS `cancao`,
COUNT(H.ID_MUSICA) AS `reproducoes`
FROM
SpotifyClone.Musicas AS M
INNER JOIN
SpotifyClone.Histórico AS H ON M.ID_MUSICA = H.ID_MUSICA
GROUP BY H.ID_MUSICA
ORDER BY `reproducoes` DESC, `cancao`
LIMIT 2;
