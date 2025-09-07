-- Se crea el trigger "auditoria_insercion_artista" que se dispara cada vez que se inserta un nuevo artista a la base

CREATE TRIGGER auditoria_insercion_artista
AFTER INSERT ON artista
FOR EACH ROW
INSERT INTO auditoria_artista VALUES
(DEFAULT, new.id_artista, new.seudonimo, user(), NOW(), 'se insertó un nuevo artista');


-- Se crea el trigger "auditoria_eliminacion_cliente" que se dispara cada vez que se elimina un artista a la base

CREATE TRIGGER auditoria_eliminacion_artista
BEFORE DELETE ON artista
FOR EACH ROW
INSERT INTO auditoria_artista VALUES
(DEFAULT, old.id_artista, old.seudonimo, user(), NOW(), 'se eliminó un artista');


-- Se crea el trigger "auditoria_modificacion_album" que se dispara cada vez que se modifica un album

CREATE TRIGGER auditoria_modificacion_album
BEFORE UPDATE ON album
FOR EACH ROW
INSERT INTO auditoria_album VALUES
(DEFAULT, new.id_album, new.id_artista, old.nombre_album, old.id_genero, new.nombre_album, new.id_genero, user(), NOW(), 'se modificó el album');











