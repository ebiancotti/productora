-- Insercion de datos en la tabla artista

INSERT INTO artista(nombre, apellido, seudonimo, nacionalidad, fecha_nacimiento) VALUES ('Elmer', 'Figueroa', 'Chayanne', 'Puerto Rico', '1968-06-28');
INSERT INTO artista(nombre, apellido, seudonimo, nacionalidad, fecha_nacimiento) VALUES ('Enrique', 'Morales', 'Ricky Martin', 'Puerto Rico', '1971-12-24');
INSERT INTO artista(nombre, apellido, seudonimo, nacionalidad, fecha_nacimiento) VALUES ('Hector', 'Montaner', 'Ricardo Montaner', 'Argentina', '1957-09-08');
INSERT INTO artista(nombre, apellido, seudonimo, nacionalidad, fecha_nacimiento) VALUES ('Edgar', 'Arjona', 'Ricardo Arjona', 'Guatemala', '1964-01-19');
INSERT INTO artista(nombre, apellido, seudonimo, nacionalidad, fecha_nacimiento) VALUES ('Juan Facundo', 'Almenara Ordónez Del Corazón De Jesus', 'Luck Ra', 'Argentina', '1999-02-20');



-- Insercion de datos en la tabla genero

INSERT INTO genero(nombre) VALUES ('Balada'), ('Pop Romántico'), ('Pop latino'), ('Pop'), ('Cuarteto');


-- Insercion de datos en la tabla album

INSERT INTO album(id_artista, nombre_album, fecha_lanzamiento, id_genero) VALUES ('1', 'Provócame', '1992-08-14', 4);
INSERT INTO album(id_artista, nombre_album, fecha_lanzamiento, id_genero) VALUES ('1', 'Volver a nacer', '1996-09-17', 2);
INSERT INTO album(id_artista, nombre_album, fecha_lanzamiento, id_genero) VALUES ('1', 'Atado a tu amor', '1998-09-29', 3);

INSERT INTO album(id_artista, nombre_album, fecha_lanzamiento, id_genero) VALUES ('2', 'Me amarás', '1993-05-25', 3);
INSERT INTO album(id_artista, nombre_album, fecha_lanzamiento, id_genero) VALUES ('2', 'A medio vivir', '1995-09-12', 3);

INSERT INTO album(id_artista, nombre_album, fecha_lanzamiento, id_genero) VALUES ('3', 'Un toque de misterio', '1989-12-12', 2);
INSERT INTO album(id_artista, nombre_album, fecha_lanzamiento, id_genero) VALUES ('3', 'Una mañana y un camino', '1994-06-28', 2);

INSERT INTO album(id_artista, nombre_album, fecha_lanzamiento, id_genero) VALUES ('4', 'Historias', '1994-04-19', 1);
INSERT INTO album(id_artista, nombre_album, fecha_lanzamiento, id_genero) VALUES ('4', 'Si el norte fuera el sur', '1996-08-20', 1);

INSERT INTO album(id_artista, nombre_album, fecha_lanzamiento, id_genero) VALUES ('5', 'Que nos falte todo', '2024-02-01', 5);
INSERT INTO album(id_artista, nombre_album, fecha_lanzamiento, id_genero) VALUES ('5', 'Que sed', '2025-04-10', 5);


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
('Ella y él', 375, 9),

('Hola perdida REMIX', 201, 10),
('La morocha', 134, 10),

('Doctor', 144, 11),
('Un siglo sin ti', 154, 11);

-- Insercion de datos en la tabla colaboracion

INSERT INTO colaboracion (id_cancion, id_artista, id_artista_invitado) VALUES
(22, 5, 1); 
