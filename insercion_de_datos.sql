-- Insercion de datos en la tabla artista

INSERT INTO artista(nombre, apellido, seudonimo, nacionalidad, fecha_nacimiento) VALUES ('Elmer', 'Figueroa', 'Chayanne', 'Puerto Rico', '1968-06-28');
INSERT INTO artista(nombre, apellido, seudonimo, nacionalidad, fecha_nacimiento) VALUES ('Enrique', 'Morales', 'Ricky Martin', 'Puerto Rico', '1971-12-24');
INSERT INTO artista(nombre, apellido, seudonimo, nacionalidad, fecha_nacimiento) VALUES ('Hector', 'Montaner', 'Ricardo Montaner', 'Argentina', '1957-09-08');
INSERT INTO artista(nombre, apellido, seudonimo, nacionalidad, fecha_nacimiento) VALUES ('Edgar', 'Arjona', 'Ricardo Arjona', 'Guatemala', '1964-01-19');


-- Insercion de datos en la tabla genero

INSERT INTO genero(nombre) VALUES ('Balada'), ('Pop Romántico'), ('Pop latino'), ('Pop');


-- Insercion de datos en la tabla album

INSERT INTO album(id_artista, nombre_album, fecha_lanzamiento, genero_principal) VALUES ('1', 'Provócame', '1992-08-14', 4);
INSERT INTO album(id_artista, nombre_album, fecha_lanzamiento, genero_principal) VALUES ('1', 'Volver a nacer', '1996-09-17', 2);
INSERT INTO album(id_artista, nombre_album, fecha_lanzamiento, genero_principal) VALUES ('1', 'Atado a tu amor', '1998-09-29', 3);

INSERT INTO album(id_artista, nombre_album, fecha_lanzamiento, genero_principal) VALUES ('2', 'Me amarás', '1993-05-25', 3);
INSERT INTO album(id_artista, nombre_album, fecha_lanzamiento, genero_principal) VALUES ('2', 'A medio vivir', '1995-09-12', 3);

INSERT INTO album(id_artista, nombre_album, fecha_lanzamiento, genero_principal) VALUES ('3', 'Un toque de misterio', '1989-12-12', 2);
INSERT INTO album(id_artista, nombre_album, fecha_lanzamiento, genero_principal) VALUES ('3', 'Una mañana y un camino', '1994-06-28', 2);

INSERT INTO album(id_artista, nombre_album, fecha_lanzamiento, genero_principal) VALUES ('4', 'Historias', '1994-04-19', 1);
INSERT INTO album(id_artista, nombre_album, fecha_lanzamiento, genero_principal) VALUES ('4', 'Si el norte fuera el sur', '1996-08-20', 1);

-- Insercion de datos en la tabla album

INSERT INTO cancion (titulo, duracion_segundos, id_album) VALUES 
('Provócame', 249, 1), 
('El centro de mi corazón', 230, 1), 

('Baila baila', 232, 2), 
('Voy a enseñarte', 235, 2), 

('Dejaría todo', 284, 3),
('Salome', 253, 3),

('Entre el amor y los halagos', 258, 4),
('Ella es', 282, 4),

('Fuego de noche, nieve de día', 337, 5),
('María', 265, 5),

('La cima del cielo', 266, 6),
('Me va a extrañar', 258, 6),

('Para siempre', 283, 7),
('Cachita', 471, 7),

('Señora de las cuatro décadas', 306, 8),
('Historia de taxi', 405, 8),

('Tu reputación', 289, 9),
('Ella y él', 375, 9);
