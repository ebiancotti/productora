-- Vista Nombre + disco + fechadisco
CREATE VIEW discos_por_artistas AS
	SELECT
		ar.seudonimo,
		al.nombre_album,
		al.fecha_lanzamiento
	FROM artista ar
	JOIN album al
		ON ar.id_artista = al.id_artista;

-- Vista disco + cantidad de canciones + genero

CREATE VIEW genero_cant_canciones_del_disco AS
	SELECT
		al.nombre_album,
		COUNT(ca.id_cancion) AS cantidad_de_canciones,
		g.nombre AS genero_principal
	FROM album al
	JOIN cancion ca
		ON al.id_album = ca.id_album
	JOIN genero g
		ON al.id_genero = g.id_genero
	GROUP BY
		al.nombre_album,
		al.id_genero;

-- Vista cantidad de canciones que duran mas de 3 minutos + artista + album

CREATE VIEW canciones_mayores_5_minutos AS
	SELECT
		ca.titulo,
		ar.seudonimo,
		al.nombre_album
	FROM cancion ca
	JOIN album al 
		ON al.id_album = ca.id_album
	JOIN artista ar 
		ON ar.id_artista = al.id_artista
	WHERE duracion_segundos > 300;


-- Vista de Artista principal con artista invitado, canción y álbum en cuestión

CREATE VIEW artistas_colaboracion AS
	SELECT 
		a.seudonimo AS Artista_Principal,
		i.seudonimo AS Artista_invitado,
		c.titulo AS Cancion,
		al.nombre_album AS Album
	FROM colaboracion col
	JOIN cancion c
		ON col.id_cancion = c.id_cancion
	JOIN artista a
		ON col.id_artista = a.id_artista
	JOIN artista i
		ON col.id_artista_invitado = i.id_artista
	JOIN album al
		ON c.id_album = al.id_album;


-- Muestra el género y la cant de albumes de cada genero)

CREATE VIEW cant_albumes_por_genero AS
	SELECT
		g.nombre AS Genero,
		COUNT(al.id_album) AS Cantidad_de_albumes
	FROM genero g
    JOIN album al
		ON al.id_genero = g.id_genero
	GROUP BY genero;
        

-- Muestra una lista con los artistas y la cantidad de canciones de cada uno

CREATE VIEW cant_canciones_por_artista AS
	SELECT
		a.seudonimo AS Artista,
        COUNT(c.id_cancion) AS Cantidad_de_canciones
	FROM artista a
    JOIN album al
		ON al.id_artista = a.id_artista
    JOIN cancion c
		ON al.id_album = c.id_album
	GROUP BY artista

