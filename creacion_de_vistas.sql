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


