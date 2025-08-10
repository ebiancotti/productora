-- Creacion de BDD

 CREATE DATABASE IF NOT EXISTS productora;
 USE productora;

-- Creacion de tabla "artista"


CREATE TABLE IF NOT EXISTS artista(
id_artista INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
nombre VARCHAR(40) NOT NULL,
apellido VARCHAR(40) NOT NULL,
seudonimo VARCHAR (80),
nacionalidad VARCHAR (40),
fecha_nacimiento DATE);


-- Insercion de datos en la tabla artista


INSERT INTO artista(nombre, apellido, seudonimo, nacionalidad, fecha_nacimiento) VALUES ('Elmer', 'Figueroa', 'Chayanne', 'Puerto Rico', '1968-06-28');
INSERT INTO artista(nombre, apellido, seudonimo, nacionalidad, fecha_nacimiento) VALUES ('Enrique', 'Morales', 'Ricky Martin', 'Puerto Rico', '1971-12-24');


-- Verificacion de datos de tabla artista


SELECT * FROM artista;
SELECT seudonimo, id_artista, fecha_nacimiento FROM artista;


-- Creacion de tabla "genero"

CREATE TABLE IF NOT EXISTS genero(
id_genero INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
nombre VARCHAR(100) NOT NULL);

-- Insercion de datos en la tabla genero

INSERT INTO genero(nombre) VALUES ('genero1'), ('genero2'), ('genero3');

-- Verificacion de datos tabla "genero"

SELECT * FROM genero;

-- Creacion de tabla "album"


CREATE TABLE IF NOT EXISTS album(
id_album INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
id_artista INT,
FOREIGN KEY (id_artista) REFERENCES artista(id_artista),
nombre_album VARCHAR(100) NOT NULL,
fecha_lanzamiento DATE,
genero_principal INT,
FOREIGN KEY (genero_principal) REFERENCES genero(id_genero));


INSERT INTO album(id_artista, nombre_album, fecha_lanzamiento, genero_principal) VALUES ('1', 'Disco1', '1991-02-13', 1);
INSERT INTO album(id_artista, nombre_album, fecha_lanzamiento, genero_principal) VALUES ('2', 'Disco2', '1995-07-18', 2);

-- Verificacion de datos tabla "album"

SELECT * FROM album;

-- Creacion de tabla "cancion"


CREATE TABLE IF NOT EXISTS cancion(
id_cancion INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
titulo VARCHAR(100) NOT NULL,
duracion_segundos INT,
id_album INT,
FOREIGN KEY (id_album) REFERENCES album(id_album));


-- Insercion de datos en la tabla album

INSERT INTO cancion (titulo, duracion_segundos, id_album) VALUES ('Cancion1A', 183, 1), ('Cancion2A', 190, 1), ('Cancion3A', 210, 1), ('Cancion1B', 160, 2), ('Cancion2B', 180, 2);

--- Verificacion de datos tabla cancion

SELECT * FROM cancion;


-- Vista Nombre + disco + fechadisco
CREATE VIEW discos_por_artistas AS
SELECT
ar.seudonimo,
al.nombre_album,
al.fecha_lanzamiento
FROM artista ar
JOIN album al
ON ar.id_artista = al.id_artista;

-- Vista disco + genero + cantidad de canciones en el disco + genero del disco

CREATE VIEW genero_cant_canciones_del_disco AS
SELECT
al.nombre_album,
COUNT(ca.id_cancion) AS cantidad_de_canciones,
g.nombre AS genero_principal
FROM album al
JOIN cancion ca
ON al.id_album = ca.id_album
JOIN genero g
ON al.genero_principal = g.id_genero
GROUP BY
al.nombre_album,
al.genero_principal;

-- Vista cantidad de canciones que duran mas de 3 minutos + artista + album

CREATE VIEW canciones_mayores_3_minutos AS
SELECT
ca.titulo,
ar.seudonimo,
al.nombre_album
FROM cancion ca
JOIN album al ON al.id_album = ca.id_album
JOIN artista ar ON ar.id_artista = al.id_artista
where duracion_segundos > 180;










