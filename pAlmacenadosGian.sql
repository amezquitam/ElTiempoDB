/* Procedimientos almacenados creados por Gianmarco Gambin Igirio */

/* Para consulta 7 */
CREATE OR REPLACE FUNCTION ContarComentariosPorLugar(lugar_obituario VARCHAR)
  RETURNS INTEGER AS
$$
DECLARE
  total_comentarios INTEGER;
BEGIN
  SELECT COUNT(*) INTO total_comentarios
  FROM Comentarios C
  INNER JOIN Obituarios O ON C.idObituario = O.idObituario
  WHERE O.lugar = lugar_obituario;
  
  RETURN total_comentarios;
END;
$$
LANGUAGE plpgsql;

/* Para consulta 11 */
CREATE OR REPLACE FUNCTION obtener_autor_articulo_reciente(subseccion_nombre VARCHAR) 
RETURNS TABLE (nombres VARCHAR, apellidos VARCHAR) AS $$
BEGIN
    RETURN QUERY
    SELECT A.nombres, A.apellidos
    FROM Autores A
    INNER JOIN Escritores E ON A.idAutor = E.idAutor
    INNER JOIN Articulos AR ON E.idAutor = AR.idAutor
    INNER JOIN Contenidos C ON AR.idArticulo = C.idContenido
    INNER JOIN SubSecciones S ON C.idContenido = S.idSubSeccion
    WHERE S.nombre = subseccion_nombre
    ORDER BY C.fechaPublicacion DESC
    LIMIT 1;
END;
$$ LANGUAGE plpgsql;

/* Para consulta 20 */
CREATE OR REPLACE FUNCTION obtener_usuarios_por_subseccion(
    nombre_subseccion VARCHAR
) RETURNS TABLE (
    nombres VARCHAR(50),
    apellidos VARCHAR(50),
    correo_electronico VARCHAR(100)
) AS $$
BEGIN
    RETURN QUERY
    SELECT U.nombres, U.apellidos, U.correoElectronico
    FROM Usuarios U
    INNER JOIN Comentarios C ON U.idUsuario = C.idUsuario
    INNER JOIN ComentariosArticulos CA ON C.idComentario = CA.idComentario
    INNER JOIN Articulos A ON A.idArticulo = (
        SELECT idArticulo
        FROM Contenidos
        WHERE idContenido = CA.idComentario
    )
    INNER JOIN SubseccionesArticulos SA ON A.idArticulo = SA.idArticulo
    WHERE SA.nombre = nombre_subseccion;
END;
$$ LANGUAGE plpgsql;
