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


-- Creacion de tabla "genero"

CREATE TABLE IF NOT EXISTS genero(
	id_genero INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
	nombre VARCHAR(100) NOT NULL);


-- Creacion de tabla "album"

CREATE TABLE IF NOT EXISTS album(
	id_album INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
	id_artista INT,
	FOREIGN KEY (id_artista) REFERENCES artista(id_artista),
	nombre_album VARCHAR(100) NOT NULL,
	fecha_lanzamiento DATE,
	id_genero INT,
	FOREIGN KEY (id_genero) REFERENCES genero(id_genero));


-- Creacion de tabla "cancion"

CREATE TABLE IF NOT EXISTS cancion(
	id_cancion INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
	titulo VARCHAR(100) NOT NULL,
	duracion_segundos INT,
	id_album INT,
	FOREIGN KEY (id_album) REFERENCES album(id_album));



-- Creacion de tabla "colaboración"

CREATE TABLE IF NOT EXISTS colaboracion(
	id_colaboracion INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
	id_cancion INT,
	id_artista INT,
	id_artista_invitado INT,
	FOREIGN KEY (id_cancion) REFERENCES cancion(id_cancion),
	FOREIGN KEY (id_artista) REFERENCES artista(id_artista),
	FOREIGN KEY (id_artista_invitado) REFERENCES artista(id_artista));



