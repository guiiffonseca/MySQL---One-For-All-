USE SpotifyClone;

DELIMITER $$

CREATE FUNCTION quantidade_musicas_no_historico(idUsuario INT)
RETURNS INT READS SQL DATA 
BEGIN
       DECLARE musicTotal INT;
       SELECT
       COUNT(USER_ID)
       FROM SpotifyClone.Histórico
       WHERE SpotifyClone.Histórico.USER_ID = idUsuario INTO musicTotal;
       RETURN musicTotal;
END $$

DELIMITER ;
