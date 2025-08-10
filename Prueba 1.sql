
-- Creacion de BDD

-- CREATE DATABASE IF NOT EXISTS productora;
-- USE productora;

-- Creacion de tabla "artista"

/*
CREATE TABLE IF NOT EXISTS artista(
id_artista INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
nombre VARCHAR(40) NOT NULL,
apellido VARCHAR(40) NOT NULL,
seudonimo VARCHAR (80),
nacionalidad VARCHAR (40),
fecha_nacimiento DATE);
*/

-- Insercion de datos en la tabla artista

/*
INSERT INTO artista(nombre, apellido, seudonimo, nacionalidad, fecha_nacimiento) VALUES ('Elmer', 'Figueroa', 'Chayanne', 'Puerto Rico', '1968-06-28');
INSERT INTO artista(nombre, apellido, seudonimo, nacionalidad, fecha_nacimiento) VALUES ('Enrique', 'Morales', 'Ricky Martin', 'Puerto Rico', '1971-12-24');
*/

-- Verificacion de datos de tabla artista

/*
SELECT * FROM artista;
SELECT seudonimo, id_artista, fecha_nacimiento FROM artista;
*/

-- Creacion de tabla "album"

/*
CREATE TABLE IF NOT EXISTS album(
id_album INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
id_artista INT,
FOREIGN KEY (id_artista) REFERENCES artista(id_artista),
nombre_album VARCHAR(100) NOT NULL,
fecha_lanzamiento DATE);
*/

-- Insercion de datos en la tabla album

/*
INSERT INTO album(id_artista, nombre_album, fecha_lanzamiento) VALUES ('1', 'Disco1', '1991-02-13');
INSERT INTO album(id_artista, nombre_album, fecha_lanzamiento) VALUES ('2', 'Disco2', '1995-07-18');
*/

-- Verificacion de datos tabla "album"

-- SELECT * FROM album;

-- Creacion de tabla "cancion"

/*
CREATE TABLE IF NOT EXISTS cancion(
id_cancion INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
titulo VARCHAR(100) NOT NULL,
duracion_segundos INT,
id_album INT,
FOREIGN KEY (id_album) REFERENCES album(id_album));
*/

-- Insercion de datos en la tabla album

-- INSERT INTO cancion (titulo, duracion_segundos, id_album) VALUES ('Cancion1A', 183, 1), ('Cancion2A', 190, 1), ('Cancion1B', 160, 2), ('Cancion2B', 180, 2);

-- Verificacion de datos tabla cancion

SELECT * FROM cancion;



