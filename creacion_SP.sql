-- Creación de Stored Procedure para registrar colaboraciones

DELIMITER $$

CREATE PROCEDURE registrar_colaboracion(
    IN id_cancion INT,
    IN id_artista_principal INT,
    IN id_artista_invitado INT
)
BEGIN
    -- Verifica que existan los artistas
    IF NOT EXISTS (SELECT 1 FROM artista WHERE id_artista = id_artista_principal) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'El artista principal no existe.';
    END IF;

    IF NOT EXISTS (SELECT 1 FROM artista WHERE id_artista = id_artista_invitado) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'El artista invitado no existe.';
    END IF;

    -- Inserta la colaboración
    INSERT INTO colaboracion (id_cancion, id_artista, id_artista_invitado)
    VALUES (id_cancion, id_artista_principal, id_artista_invitado);
END
$$
DELIMITER ;



-- elimina por completo todo lo relacionado con el artista

DELIMITER $$

CREATE PROCEDURE eliminar_artista_y_su_obra(
    IN p_artista_id INT
)
BEGIN

   -- Elimina las colaboraciones del artista
    DELETE FROM colaboracion WHERE id_artista = p_artista_id;
    DELETE FROM colaboracion WHERE id_artista_invitado = p_artista_id;
    -- Elimina las canciones del artista
    DELETE c
    FROM cancion AS c
    INNER JOIN album AS a ON c.id_album = a.id_album
    WHERE a.id_artista = p_artista_id;
    
    -- Elimina los álbumes del artista
    DELETE FROM album WHERE id_artista = p_artista_id;

    -- Elimina al artista
    DELETE FROM artista WHERE id_artista = p_artista_id;

END
$$
DELIMITER ;



-- Devuelve el listado de canciones del artista que se le indique (por ID)

DELIMITER $$
CREATE PROCEDURE obtener_canciones_por_artista(
    IN p_id_artista INT
)
BEGIN
    SELECT 
        a.seudonimo AS artista,        
        c.titulo AS cancion,
        al.nombre_album AS album
        
    FROM artista AS a
    INNER JOIN album AS al ON a.id_artista = al.id_artista
    INNER JOIN cancion AS c ON al.id_album = c.id_album
    WHERE a.id_artista = p_id_artista
    ORDER BY al.nombre_album, c.titulo ASC;
END
$$
DELIMITER ;
