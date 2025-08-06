-- CREATE DATABASE IF NOT EXISTS productora;
-- USE productora;

CREATE TABLE IF NOT EXISTS artista(
id_artista INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
nombre VARCHAR(40) NOT NULL,
apellido VARCHAR(40) NOT NULL,
seudonimo VARCHAR (80),
nacionalidad VARCHAR (40),
fecha_nacimiento DATE);

INSERT INTO artista(nombre, apellido, seudonimo, nacionalidad, fecha_nacimiento) VALUES ('Elmer', 'Figueroa', 'Chayanne', 'Puerto Rico', '1968-06-28');

INSERT INTO artista(nombre, apellido, seudonimo, nacionalidad, fecha_nacimiento) VALUES ('Enrique', 'Morales', 'Ricky Martin', 'Puerto Rico', '1971-12-24');

SELECT * FROM artista;