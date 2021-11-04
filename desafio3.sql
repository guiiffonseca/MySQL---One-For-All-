CREATE VIEW historico_reproducao_usuarios AS
SELECT 
U.NOME AS `usuario`, M.TITULO_MUSICA AS `nome`
FROM
SpotifyClone.Histórico AS H
INNER JOIN 
SpotifyClone.Musicas AS M ON H.ID_MUSICA = M.ID_MUSICA
INNER JOIN
SpotifyClone.Usuário AS U ON H.USER_ID = U.USER_ID
ORDER BY  `usuario`, `nome`;
