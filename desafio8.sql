DELIMITER $$
CREATE TRIGGER trigger_usuario_delete     
BEFORE DELETE ON Usuário     
FOR EACH ROW     
BEGIN
  DELETE FROM Histórico WHERE USER_ID = OLD.USER_ID;
  DELETE FROM Seguindo WHERE USER_ID = OLD.USER_ID;
END
$$
DELIMITER ;
