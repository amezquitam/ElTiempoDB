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
