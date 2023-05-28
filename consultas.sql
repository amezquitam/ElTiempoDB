/*
	1. ¿Cuál es el número total de usuarios registrados?
*/

SELECT totalUsuarios
FROM TotalUsuarios;

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

SELECT totalSuscripciones
FROM TotalSuscripciones;

/*
	5. ¿Cuál es la descripción del bloguero con ID 3?
*/

SELECT descripcion
FROM Blogueros
WHERE idBloguero = 3;

/*
	6. ¿Cuál es el nombre completo de los autores que han escrito al menos un artículo premium?
*/

SELECT nombreCompleto
from AutoresPremium;

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

SELECT A.nombres || ' ' || A.apellidos AS autor, H.idHistoria, H.idGaleria, H.imagen, H.cuerpo, CO.visualizaciones
FROM Historias H
JOIN Galerias G ON H.idGaleria = G.idGaleria
JOIN Caricaturistas C ON G.autor = C.nombre
JOIN Autores A ON C.idRedSocial = A.idAutor
JOIN Contenidos CO ON CO.idContenido = H.idHistoria
order by CO.visualizaciones desc
limit 1;

/*
	11. ¿Cuál es el autor que ha escrito el artículo más reciente en una determinada subsección?
*/

SELECT obtener_autor_articulo_reciente('Nombre de la Subseccion');

/*
	12. ¿Cuál es la subsección con el mayor número de usuarios suscritos?
*/

SELECT S.nombre, COUNT(*) AS total_suscriptores
FROM SubSecciones S
JOIN UsuarioSubsecciones US ON S.idSubSeccion = US.idSubSeccion
GROUP BY S.nombre
ORDER BY total_suscriptores DESC
LIMIT 1;

/*
	13. ¿Cuál es el nombre del podcast con la menor cantidad de episodios?
*/

SELECT P.titulo
FROM Podcasts P
LEFT JOIN EpisodiosPodcasts EP ON P.idPodcast = EP.idPodcast
GROUP BY P.titulo
HAVING COUNT(EP.idArticulo) = (
  SELECT COUNT(idArticulo)
  FROM EpisodiosPodcasts
  GROUP BY idPodcast
  ORDER BY COUNT(idArticulo) ASC
  LIMIT 1
);

/*
	14. ¿Cuál es el bloguero que ha escrito la actualización de blog con el mayor número de comentarios?
*/

SELECT B.nombreCompleto, COUNT(C.idComentario) AS total_comentarios
FROM Blogueros B
JOIN Blogs BL ON B.idBloguero = BL.idBloguero
JOIN ActualizacionesDeBlogs AB ON BL.idBlog = AB.idBlog
JOIN ComentariosBlogs CB ON AB.idContenido = CB.idContenido
JOIN Comentarios C ON CB.idComentario = C.idComentario
GROUP BY B.nombreCompleto
ORDER BY total_comentarios DESC
LIMIT 1;

/*
	15. ¿Cuál es el juego con el porcentaje más alto de votos positivos en los comentarios?
*/

SELECT J.nombre, COUNT(V.idVoto) AS total_votos, COUNT(V.idVoto) FILTER (WHERE V.voto = true) AS votos_positivos,
       (COUNT(V.idVoto) FILTER (WHERE V.voto = true) * 100.0 / COUNT(V.idVoto)) AS porcentaje_positivo
FROM Juegos J
JOIN ActualizacionesJuegos AJ ON J.idJuego = AJ.idJuego
JOIN ComentariosArticulos CA ON AJ.idActualización = CA.idComentario
JOIN Votos V ON CA.idComentario = V.idComentario
GROUP BY J.idJuego
ORDER BY porcentaje_positivo DESC
LIMIT 1;

/*
	16. ¿Cuál es el autor que ha escrito el artículo con el mayor número de etiquetas asociadas?
*/

SELECT A.nombres || ' ' || A.apellidos AS autor
FROM Autores A
JOIN Escritores E ON A.idAutor = E.idAutor
JOIN Articulos AR ON E.idAutor = AR.idAutor
JOIN (
  SELECT idArticulo, COUNT(*) AS num_etiquetas
  FROM EtiquetasDeArticulos
  GROUP BY idArticulo
  ORDER BY num_etiquetas DESC
  LIMIT 1
) AS T ON AR.idArticulo = T.idArticulo
WHERE AR.idAutor = E.idAutor;

/*
	17. ¿Cuál es la sección que contiene el mayor número de subsecciones?
*/

SELECT S.nombre AS seccion, num_subsecciones as cantidadSubsecciones
FROM Secciones S
INNER JOIN (
    SELECT idSeccion, COUNT(*) AS num_subsecciones
    FROM SubSecciones
    GROUP BY idSeccion
    ORDER BY num_subsecciones DESC
    LIMIT 1
) AS SubseccionesCount ON S.idSeccion = SubseccionesCount.idSeccion;

/*
	18. ¿Cuál es el blog que ha sido actualizado por el mayor número de blogueros diferentes?
*/

SELECT B.idBlog, COUNT(DISTINCT BU.idUsuario) AS num_blogueros
FROM Blogs B
JOIN BlogDeUsuarios BU ON B.idBlog = BU.idBlog
GROUP BY B.idBlog
ORDER BY num_blogueros DESC
LIMIT 1;

/*
	19. ¿Cuál es el tema del día con la menor cantidad de noticias asociadas?
*/

SELECT TD.nombre AS tema_del_dia, COUNT(N.idArticulo) AS cantidad_noticias
FROM TemasDelDia TD
LEFT JOIN Noticias N ON TD.idTemaDelDia = N.idTemaDelDia
GROUP BY TD.idTemaDelDia, TD.nombre
ORDER BY COUNT(N.idArticulo) ASC
LIMIT 1;

/*
	20. ¿Cuales son los nombres, apellidos, correo electronico de usuarios que han
		 comentado en articulos pertenecientes una sub-seccion en especifico?
*/

SELECT DISTINCT nombres, apellidos, correo_electronico
FROM obtener_usuarios_por_subseccion('nombre_subseccion_especifica');
