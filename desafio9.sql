DELIMITER $$

CREATE PROCEDURE albuns_do_artista(IN nome VARCHAR(100))
BEGIN 
	SELECT AR.NOME AS `artista`,
    AB.TITULO AS `album`
    FROM SpotifyClone.Artista AS AR
    JOIN SpotifyClone.Albuns AS AB
    ON AR.ARTISTA_ID = AB.ARTISTA_ID
    WHERE nome = AR.NOME
    ORDER BY `artista`;
END $$

DELIMITER ;