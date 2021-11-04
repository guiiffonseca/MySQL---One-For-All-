CREATE VIEW faturamento_atual AS 
SELECT
MIN(P.VALOR) AS `faturamento_minimo`,
MAX(P.VALOR) AS `faturamento_maximo`,
ROUND(AVG(P.VALOR), 2) AS `faturamento_medio`,
SUM(P.VALOR) AS `faturamento_total`
FROM
SpotifyClone.Plano AS P
INNER JOIN
SpotifyClone.Usuário AS U ON P.PLANO_ID = U.PLANO_ID;
