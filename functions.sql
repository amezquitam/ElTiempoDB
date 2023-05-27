
DROP FUNCTION IF EXISTS CREAR_USUARIO;

CREATE OR REPLACE FUNCTION CREAR_USUARIO (
  nombres VARCHAR(50), apellidos VARCHAR(50), correoElectronico VARCHAR(100),
  contraseña VARCHAR(255), telefono VARCHAR(10), nombreUsuario VARCHAR(128)
) RETURNS INTEGER AS $$ 
DECLARE id INTEGER;
BEGIN
  INSERT INTO Usuarios (nombres, apellidos, correoElectronico, contraseña, telefono, nombreUsuario)
  VALUES (nombres, apellidos, correoElectronico, contraseña, telefono, nombreUsuario)
  RETURNING idUsuario INTO id;
  return id;
END; 
$$ LANGUAGE plpgsql; 


DROP FUNCTION IF EXISTS CREAR_AUTOR;

CREATE OR REPLACE FUNCTION CREAR_AUTOR (
  nombres VARCHAR(100), apellidos VARCHAR(100),
  portada VARCHAR(512), descripcion VARCHAR(512)
) RETURNS INTEGER AS $$ 
DECLARE id INTEGER;
BEGIN
  INSERT INTO Autores (nombres, apellidos, portada, descripcion)
  VALUES (nombres, apellidos, portada, descripcion)
  RETURNING idAutor INTO id;
  return id;
END;
$$ LANGUAGE plpgsql;


DROP FUNCTION IF EXISTS CREAR_ESCRITOR;

CREATE OR REPLACE FUNCTION CREAR_ESCRITOR (
  nombres VARCHAR(100), apellidos VARCHAR(100),
  portada VARCHAR(512), descripcion VARCHAR(512)
) RETURNS INTEGER AS $$
DECLARE id INTEGER;
BEGIN
  id := CREAR_AUTOR(nombres, apellidos, portada, descripcion);
  INSERT INTO Escritores
  VALUES (id);
  return id;
END;
$$ LANGUAGE plpgsql;


DROP FUNCTION IF EXISTS CREAR_REDACCION;

CREATE OR REPLACE FUNCTION CREAR_REDACCION (
  nombres VARCHAR(100), apellidos VARCHAR(100),
  portada VARCHAR(512), descripcion VARCHAR(512),
  nombre VARCHAR
) RETURNS INTEGER AS $$
DECLARE id INTEGER;
BEGIN
  id := CREAR_AUTOR(nombres, apellidos, portada, descripcion);
  INSERT INTO Redacciones
  VALUES (id, nombre);
  return id;
END;
$$ LANGUAGE plpgsql;


DROP FUNCTION IF EXISTS CREAR_ARTICULO;

CREATE OR REPLACE FUNCTION CREAR_ARTICULO (
  idAutor integer,
  titulo VARCHAR,
  fechaPublicacion date,
  cuerpo VARCHAR(4096),
  subtitulo VARCHAR(256),
  portada VARCHAR,
  premium BIT,
  visualizaciones integer
  
) RETURNS INTEGER AS $$
DECLARE id INTEGER;
BEGIN

  INSERT INTO Contenidos (titulo, fechaPublicacion, visualizaciones)
  VALUES (titulo, fechaPublicacion, visualizaciones)
  RETURNING idContenido INTO id;

  INSERT INTO Articulos
  VALUES (id, idAutor, cuerpo, subtitulo, portada, premium);

  return id;
END;
$$ LANGUAGE plpgsql;


DROP FUNCTION IF EXISTS CREAR_SECCION;

CREATE OR REPLACE FUNCTION CREAR_SECCION (nombre VARCHAR) RETURNS INTEGER AS $$ 
DECLARE id INTEGER;
BEGIN
  INSERT INTO Secciones (nombre)
  VALUES (nombre)
  RETURNING idSeccion INTO id;
  return id;
END;
$$ LANGUAGE plpgsql;


DROP FUNCTION IF EXISTS CREAR_SUBSECCION;

CREATE OR REPLACE FUNCTION CREAR_SUBSECCION (idSeccion INT, nombre VARCHAR) RETURNS INTEGER AS $$ 
DECLARE id INTEGER;
BEGIN
  INSERT INTO SubSecciones (nombre, idSeccion)
  VALUES (nombre, idSeccion)
  RETURNING idSubSeccion INTO id;
  return id;
END;
$$ LANGUAGE plpgsql;

DROP FUNCTION IF EXISTS CREAR_ETIQUETA;

CREATE OR REPLACE FUNCTION CREAR_ETIQUETA (nombre VARCHAR) RETURNS INTEGER AS $$ 
DECLARE id INTEGER;
BEGIN
  INSERT INTO Etiquetas (nombre)
  VALUES (nombre)
  RETURNING idEtiqueta INTO id;
  return id;
END;
$$ LANGUAGE plpgsql;

DROP FUNCTION IF EXISTS CREAR_BLOGUERO;

CREATE OR REPLACE FUNCTION CREAR_BLOGUERO (
  nombre_bloguero VARCHAR, descripcion VARCHAR, 
  tipo_red_social VARCHAR, url_red_social VARCHAR
) RETURNS INTEGER AS $$ 
DECLARE idTipoRed INTEGER := NULL; id INTEGER;
BEGIN

  SELECT idTipo INTO idTipoRed
  FROM TiposRedesSociales 
  WHERE LOWER(nombre) = LOWER(tipo_red_social);

  IF idTIpoRed IS NULL THEN
    INSERT INTO TiposRedesSociales (nombre)
    VALUES (tipo_red_social)
    RETURNING idTipo INTO idTipoRed;
  END IF;

  INSERT INTO RedesSociales (nombre, idTipo, enlace)
  VALUES (nombre_bloguero, idTipoRed, url_red_social)
  RETURNING idRedSocial INTO id;

  return id;
END;
$$ LANGUAGE plpgsql;