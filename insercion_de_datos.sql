-- Insercion de datos en la tabla artista

INSERT INTO artista(nombre, apellido, seudonimo, nacionalidad, fecha_nacimiento) VALUES ('Elmer', 'Figueroa', 'Chayanne', 'Puerto Rico', '1968-06-28');
INSERT INTO artista(nombre, apellido, seudonimo, nacionalidad, fecha_nacimiento) VALUES ('Enrique', 'Morales', 'Ricky Martin', 'Puerto Rico', '1971-12-24');


-- Insercion de datos en la tabla genero

INSERT INTO genero(nombre) VALUES ('genero1'), ('genero2'), ('genero3');


-- Insercion de datos en la tabla album

INSERT INTO album(id_artista, nombre_album, fecha_lanzamiento, genero_principal) VALUES ('1', 'Disco1', '1991-02-13', 1);
INSERT INTO album(id_artista, nombre_album, fecha_lanzamiento, genero_principal) VALUES ('2', 'Disco2', '1995-07-18', 2);

-- Insercion de datos en la tabla album

INSERT INTO cancion (titulo, duracion_segundos, id_album) VALUES ('Cancion1A', 183, 1), ('Cancion2A', 190, 1), ('Cancion3A', 210, 1), ('Cancion1B', 160, 2), ('Cancion2B', 180, 2);