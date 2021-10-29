CREATE VIEW estatisticas_musicais AS 
SELECT COUNT(*) AS `cancoes`,
(SELECT COUNT(ARTISTA_ID) FROM SpotifyClone.Artista) AS `artistas`,
(SELECT COUNT(ALBUM_ID) FROM SpotifyClone.Albuns) AS `albuns` 
FROM SpotifyClone.Musicas;
