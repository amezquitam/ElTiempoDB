/*
	1. ¿Cuál es el número total de usuarios registrados?
*/

SELECT COUNT(*) AS totalUsuarios
FROM Usuarios;

/*
	2. ¿Cuál es el nombre completo del autor con ID 5?
*/

SELECT nombres || ' ' || apellidos AS nombreCompleto
FROM Autores
WHERE idAutor = 5;

/*
	3. ¿Cuál es el subtítulo del artículo con ID 10?
*/

SELECT subtitulo
FROM Articulos
WHERE idArticulo = 10;

/*
	4. ¿Cuántas suscripciones existen actualmente?
*/

SELECT COUNT(*) AS totalSuscripciones
FROM Suscripciones;

/*
	5. ¿Cuál es la descripción del bloguero con ID 3?
*/

SELECT descripcion
FROM Blogueros
WHERE idBloguero = 3;

/*
	6. ¿Cuál es el nombre completo de los autores que han escrito al menos un artículo premium?
*/

SELECT DISTINCT A.nombres || ' ' || A.apellidos AS nombreCompleto
FROM Autores A
INNER JOIN Escritores E ON A.idAutor = E.idAutor
INNER JOIN Articulos AR ON E.idAutor = AR.idAutor
WHERE AR.premium = '1';

/*
	7. ¿Cuál es el número total de comentarios realizados en los
		obituarios publicados en un determinado lugar?
*/

SELECT ContarComentariosPorLugar('Nombre del lugar') AS total_comentarios;

/*
	8. ¿Cuál es el nombre del podcast al que están suscritos la mayoría de los usuarios?
*/

SELECT P.titulo
FROM Podcasts P
JOIN PodcastsUsuarios PU ON P.idPodcast = PU.idPodcast
GROUP BY P.titulo
ORDER BY COUNT(PU.idUsuario) DESC
LIMIT 1;

/*
	9. ¿Cuál es el blog con el mayor número de actualizaciones hasta la fecha?
*/

SELECT B.idBlog, B.titulo, COUNT(A.idContenido) AS numero_actualizaciones
FROM Blogs B
JOIN BlogDeUsuarios BU ON B.idBlog = BU.idBlog
JOIN ActualizacionesDeBlogs A ON B.idBlog = A.idBlog
GROUP BY B.idBlog, B.titulo
ORDER BY numero_actualizaciones DESC
LIMIT 1;

/*
	10. ¿Cuál es el autor de la historia que ha sido visualizada más veces?
*/

SELECT A.nombres || ' ' || A.apellidos AS autor, H.idHistoria, H.idGaleria, H.imagen, H.cuerpo,
			MAX(SELECT CO.visualizaciones
			FROM Contenidos as CO
			WHERE CO.idContenido = H.idHistoria) AS max_visualizaciones
FROM Historias H
JOIN Galerias G ON H.idGaleria = G.idGaleria
JOIN Caricaturistas C ON G.idGaleria = C.idCaricaturista
JOIN Autores A ON C.idRedSocial = A.idAutor
GROUP BY A.nombres, A.apellidos, H.idHistoria, H.idGaleria, H.imagen, H.cuerpo
ORDER BY max_visualizaciones DESC
LIMIT 1;
