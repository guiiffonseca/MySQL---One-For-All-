DROP DATABASE IF EXISTS SpotifyClone;

CREATE DATABASE SpotifyClone;

USE SpotifyClone;

-- CRIANDO TABELAS

CREATE TABLE Artista (
	ARTISTA_ID INT AUTO_INCREMENT PRIMARY KEY,
    NOME VARCHAR(100) NOT NULL
);

CREATE TABLE Plano (
	PLANO_ID INT AUTO_INCREMENT PRIMARY KEY, 
    TIPO VARCHAR(50) NOT NULL,
    VALOR DECIMAL(4, 2) NOT NULL
);

CREATE TABLE Usuário (
	USER_ID INT AUTO_INCREMENT PRIMARY KEY,
    NOME VARCHAR(100) NOT NULL,
    IDADE INT NOT NULL, 
    PLANO_ID INT NOT NULL,
    FOREIGN KEY (PLANO_ID) REFERENCES Plano (PLANO_ID)
);

CREATE TABLE Albuns (
	ALBUM_ID INT AUTO_INCREMENT PRIMARY KEY,
    TITULO VARCHAR(200) NOT NULL, 
    ARTISTA_ID INT NOT NULL,
    FOREIGN KEY (ARTISTA_ID) REFERENCES Artista (ARTISTA_ID)
);

CREATE TABLE Musicas (
	ID_MUSICA INT AUTO_INCREMENT PRIMARY KEY,
    TITULO_MUSICA VARCHAR(200) NOT NULL,
    ALBUM_ID INT NOT NULL, 
    FOREIGN KEY (ALBUM_ID) REFERENCES Albuns (ALBUM_ID)
);

CREATE TABLE Seguindo (
	USER_ID INT NOT NULL,
    ARTISTA_ID INT NOT NULL, 
    CONSTRAINT PRIMARY KEY (USER_ID, ARTISTA_ID),
    FOREIGN KEY (USER_ID) REFERENCES Usuário (USER_ID),
    FOREIGN KEY (ARTISTA_ID) REFERENCES Artista (ARTISTA_ID)
);

CREATE TABLE Histórico (
	USER_ID INT NOT NULL,
    ID_MUSICA INT NOT NULL, 
    CONSTRAINT PRIMARY KEY (USER_ID, ID_MUSICA),
    FOREIGN KEY (USER_ID) REFERENCES Usuário (USER_ID),
    FOREIGN KEY (ID_MUSICA) REFERENCES Musicas (ID_MUSICA)
);

-- POPULANDO TABELAS 

INSERT INTO SpotifyClone.Artista (NOME)
values
('Walter Phoenix'), 
('Peter Strong'), 
('Lance Day'),
('Freedie Shannon');

INSERT INTO SpotifyClone.Plano (TIPO, VALOR)
values
('Gratuito', '0.00'), 
('Unifersitário', '5.99'), 
('Familiar', '7.99');

INSERT INTO SpotifyClone.Usuário (NOME, IDADE, PLANO_ID)
values
('Thati', 23, 1), 
('Cintia', 35, 3), 
('Bill', 20, 2),
('Roger', 45, 1);

INSERT INTO SpotifyClone.Albuns (TITULO, ARTISTA_ID)
values
('Envious', 1), 
('Exuberant', 1), 
('Hallowed Steam', 2),
('Incandescent', 3),
('Temporary Culture',4);

INSERT INTO SpotifyClone.Musicas (TITULO_MUSICA, ALBUM_ID)
values 
('Soul For Us', 1),
('Reflections Of Magic', 1),
('Dance With Her Own', 1),
('Troubles Of My Inner Fire',2),
('Time Fireworks',2),
('Magic Circus',3),
('Honey, So Do I',3),
("Sweetie, Let's Go Wild",3),
('She Knows',3),
('Fantasy For Me',4),
('Celebration Of More',4),
('Rock His Everything',4),
('Home Forever',4),
('Diamond Power',4),
("Honey, Let's Be Silly",4),
('Thang Of Thunder',5),
('Words Of Her Life',5),
('Without My Streets',5);

INSERT INTO SpotifyClone.Seguindo (USER_ID, ARTISTA_ID)
values
(1, 1), 
(1, 4), 
(1, 3),
(2, 1),
(2, 3),
(3, 2),
(3, 1),
(4, 4);

INSERT INTO SpotifyClone.Histórico (USER_ID, ID_MUSICA)
values
(1,1),
(1,6),
(1,14),
(1,16),
(2,13),
(2,17),
(2,2),
(2,15),
(3,4),
(3,16),
(3,6),
(4,3),
(4,18),
(4,11); 


