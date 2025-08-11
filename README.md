## Introducción:


```sh
"En la industria musical de hoy, la organización y categorización estratégica de los álbumes y canciones son cruciales para el éxito, facilitando el acceso, la distribución y la promoción de la música.

En esta presentación, exploraremos cómo nuestra plataforma puede optimizar la gestión de catálogos musicales, mejorar la búsqueda y el descubrimiento de contenido y proporcionar una base de datos segura y estructurada para el manejo de todo el repertorio de artistas."

```
## Objetivos:

```sh
"Nuestro objetivo principal es implementar un sistema de gestión de metadatos que nos permita estructurar y categorizar de manera rigurosa nuestro catálogo musical. Esto nos permitirá optimizar la distribución, mejorar la búsqueda y garantizar la consistencia de la información en todas las plataformas.

Buscamos centralizar y estandarizar la información de álbumes, artistas, géneros y subgéneros. De esta manera, facilitamos la navegación intuitiva y proporcionamos una base de datos robusta que simplifica la promoción y el análisis del rendimiento de nuestra música.

Con esta herramienta, aspiramos a convertir nuestra librería musical en un activo estratégico, mejorando la eficiencia y el valor de cada pieza de nuestro repertorio."

```

## Situación Problematica:


```sh
"Nuestra productora musical enfrenta hoy en día importantes retos en la gestión de la información, el acceso a los datos de los artistas y a sus grabaciones es lento e inseguro. Esta situación no solo afecta la eficiencia de nuestros flujos de trabajo, sino que también limita nuestra capacidad para tomar decisiones creativas rápidas e informadas.

Para superar estos obstáculos, hemos implementado un nuevo sistema de gestión. Esta plataforma centraliza toda la información, optimiza la comunicación entre los equipos y nos brinda las herramientas que necesitamos para manejar los datos de producción de forma mucho más eficiente."

```


## Modelo de negocio:


```sh
"Nuestro modelo de negocio se enfoca en gestionar y promover un catálogo musical especializado y de alta calidad. Utilizaremos una plataforma de gestión digital para optimizar los procesos de producción y distribución, mejorar la coordinación entre artistas y equipo.

Nuestros ingresos provendrán de licencias de sincronización, regalías por streaming, venta de música y otros servicios especializados, como la supervisión musical para proyectos audiovisuales. A través de canales de distribución como plataformas de streaming, acuerdos con sellos discográficos y redes de contactos en la industria, buscaremos maximizar el alcance de nuestra música."

```

### Descripcion de la Base de Datos

<br>

```sh
La base de datos "productora" contiente los elemento básicos con los que se comenzarán a trabajar, dando lugar a nuevos elementos que se sumarán en el futuro según se vayan requeriendo. 

Tabla "artista" contiente los datos principales de cada artista:
id_artista se utilizó como clave primaria, de forma de identificador único.


Tabla "album" contiente los datos del mismo e identificadores que lo conectan con otros elementos:

id_album se utilizó como clave primaria, de forma de identificador único.
id_artista se utilizó como clave secundaria que lo vincula con el artista principal de dicho album
genero_principal se utilizó como clave secundaria que lo vincula con el género musical predominante en dicho album

Tabla "genero": 

id_genero se utilizó como clave primaria, de forma de identificador único.
nombre indica el nombre del género segun su id


Tabla "cancion":

id_canción se utilizó como clave primaria, de forma de identificador único.
id_album se utilizó como clave secundaria que lo vincula con el album que contiene dicha canción.

```

### Vistas:

```sh

discos_por_artistas:

Muestra los álbumes con sus respectivas fechas de lanzamiento, de cada uno de los artistas.


genero_cant_canciones_del_disco:

Muestra la cantidad de canciones de cada disco, agrupados por género


canciones_mayores_3_minutos:

Muestra nombre de la canción, artista y album de aquellas canciones cuya duración de mayor a 3 minutos




```


<br>

### --------------------------------------------

<br>

- <a href="./creacion_base_tablas.sql"> Creacion de la BDD </a><br>
- <a href="./insercion_de_datos.sql"> Inserción de Datos</a><br>
- <a href="./creacion_de_vistas.sql"> Creacion de las Vistas</a><br>

  <br>

---

<br>

###  Emiliano Biancotti - Comisión #81830 


---
