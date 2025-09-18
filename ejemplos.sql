USE productora;

-- Ejemplos y casos de uso (ejecutar de a uno por vez)

-- Vistas: -----------

-- Nos muestra todas las canciones que duran mas de 5min
SELECT * FROM productora.canciones_mayores_5_minutos;

-- Nos muestra todos los discos ordenados por artista
SELECT * FROM productora.discos_por_artistas;


-- Funciones: ----------

-- Queremos calcular la duración total del disco "Provocame" del artista "Chayanne":

SELECT calcular_duracion_total_album((SELECT id_album FROM album WHERE nombre_album = 'Provócame')) as tiempo_total_album; -- Nos da como resultado 7:59, que coincide con la suma de la duración de las canciones de dicho album


-- Queremos saber si un artista colabora con otro en alguna canción:

SELECT es_artista_colaborador((SELECT id_artista FROM artista WHERE seudonimo = 'Ricardo Arjona')) as es_colaborador;    -- Al dar "0" (False) nos indica que Arjona no participó en ninguna canción con otro artista

SELECT es_artista_colaborador((SELECT id_artista FROM artista WHERE seudonimo = 'Chayanne')) as es_colaborador;    -- Al dar "1" (True) nos indica que Chayanne si participó en una canción con otro artista



-- Triggers ---------

-- Antes de realizar ninguna acción, verificamos que la tabla "auditoría_artista" está vacía (siempre y cuando hayamos creado el trigger después de la inserión de los datos)

SELECT * FROM auditoria_artista;

-- Vamos a insertar un nuevo artista:

INSERT INTO artista(nombre, apellido, seudonimo, nacionalidad, fecha_nacimiento) VALUES ('Jose Luis', 'Rodríguez González', 'El Puma', 'Venezuela', '1943-01-14');

-- Vemos que se nos agregó una linea en la tabla auditorías

SELECT * FROM auditoria_artista;

-- Ahora vamos a eliminar a ese artista para eso usaremos nustro SP:

CALL eliminar_artista_y_su_obra((SELECT id_artista FROM artista WHERE seudonimo = 'El Puma'));

-- Vemos que se nos agregó una linea en la tabla auditorías con la eliminación del mismo:

SELECT * FROM auditoria_artista;



-- Comprobamos que la tabla "auditoria_album" sigue vacía ya que aún no modificamos ninguno

SELECT * FROM auditoria_album;

-- Ahora modificaremos el nombre y el género de un álbum:

UPDATE album SET nombre_album = 'Una mañana y tres caminos' , id_genero = (1) WHERE id_album = 7; 

-- Verificamos que se registró la modificación:

SELECT * FROM auditoria_album;



-- STORED PROCEDURES -------

-- Vamos a suponer que en la canción "Historia de Taxi" de Arjona, participó Chayanne:

-- Vemos que inicialmente no existe:

SELECT * FROM productora.artistas_colaboracion WHERE Cancion = 'Historia de taxi';

-- Realizamos el registro de la colaboración:

CALL registrar_colaboracion((SELECT id_cancion FROM cancion WHERE titulo = 'Historia de taxi'), 
(SELECT id_artista FROM artista WHERE seudonimo = 'Ricardo Arjona'),
(SELECT id_artista FROM artista WHERE seudonimo = 'Chayanne'));

-- Verificamos:

SELECT * FROM productora.artistas_colaboracion WHERE Cancion = 'Historia de taxi';


-- Queremos obtener todas las canciones de Luck Ra

CALL obtener_canciones_por_artista((SELECT id_artista FROM artista WHERE seudonimo = 'Luck Ra'));



-- Queremos eliminar toda la obra de Montaner de nuestra BDD


-- Verificamos que el artista existe:

SELECT * FROM artista WHERE seudonimo = 'Ricardo Montaner';

-- Verificamos que tiene álbumes:
SELECT ar.seudonimo, al.nombre_album
	FROM artista ar
	JOIN album al
		ON ar.id_artista = al.id_artista
WHERE ar.seudonimo = 'Ricardo Montaner';

-- Verificamos que tiene canciones:

SELECT 
        a.seudonimo,        
        c.titulo
        
    FROM artista AS a
    INNER JOIN album AS al ON a.id_artista = al.id_artista
    INNER JOIN cancion AS c ON al.id_album = c.id_album
    WHERE a.seudonimo = 'Ricardo Montaner'
    ORDER BY c.titulo ASC;

-- Eliminamos todo su registro:

CALL eliminar_artista_y_su_obra((SELECT id_artista FROM artista WHERE seudonimo = 'Ricardo Montaner'));

-- Ya no encontraremos ni al artista ni sus álbumes ni canciones:

-- artista:

SELECT * FROM artista WHERE seudonimo = 'Ricardo Montaner';

-- álbumes:
SELECT ar.seudonimo, al.nombre_album
	FROM artista ar
	JOIN album al
		ON ar.id_artista = al.id_artista
WHERE ar.seudonimo = 'Ricardo Montaner';

-- canciones:

SELECT 
        a.seudonimo,        
        c.titulo
        
    FROM artista AS a
    INNER JOIN album AS al ON a.id_artista = al.id_artista
    INNER JOIN cancion AS c ON al.id_album = c.id_album
    WHERE a.seudonimo = 'Ricardo Montaner'
    ORDER BY c.titulo ASC;