USE productora;

-- Creacion de Funcion que calcula la duración de un álbum

DELIMITER $$

CREATE FUNCTION calcular_duracion_total_album(p_album_id INT)
RETURNS TIME
DETERMINISTIC
BEGIN
    DECLARE duracion_total TIME;

    SELECT SEC_TO_TIME(SUM(duracion_segundos))
    INTO duracion_total
    FROM cancion
    WHERE id_album = p_album_id;

    RETURN duracion_total;
END
$$
DELIMITER ;



-- Devuelve si un artista realiza por lo menos una colaboración en alguna canción.

DELIMITER $$

CREATE FUNCTION es_artista_colaborador(p_artista_id INT)
RETURNS TINYINT
READS SQL DATA
BEGIN
    DECLARE es_colaborador TINYINT DEFAULT 0;

    SELECT 1
    INTO es_colaborador
    FROM colaboracion
    WHERE id_artista_invitado = p_artista_id
    LIMIT 1;

    RETURN es_colaborador;
END
$$
DELIMITER ;







