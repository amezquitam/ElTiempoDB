
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
  nombre_bloguero VARCHAR, descripcion_bloguero VARCHAR, 
  tipo_red_social VARCHAR, url_red_social VARCHAR
) RETURNS INTEGER AS $$ 
DECLARE idRedSocial_ INTEGER := NULL; id INTEGER;
BEGIN

  idRedSocial_ := CREAR_RED_SOCIAL(tipo_red_social, url_red_social);

  INSERT INTO Blogueros (nombreCompleto, descripcion, idRedSocial)
  VALUES (nombre_bloguero, descripcion_bloguero, idRedSocial_)
  RETURNING idBloguero INTO id;

  return id;
END;
$$ LANGUAGE plpgsql;


DROP FUNCTION IF EXISTS CREAR_CARICATURISTA;

CREATE OR REPLACE FUNCTION CREAR_CARICATURISTA (
  nombre_caricaturista VARCHAR, descripcion_cariaturista VARCHAR, 
  portada_caricaturista VARCHAR, pseudonimo_caricaturista VARCHAR,
  tipo_red_social VARCHAR, url_red_social VARCHAR
) RETURNS INTEGER AS $$ 
DECLARE idRedSocial_ INTEGER := NULL; id INTEGER;
BEGIN

  idRedSocial_ := CREAR_RED_SOCIAL(tipo_red_social, url_red_social);

  INSERT INTO Caricaturistas (nombre, descripcion, portada, pseudonimo, idRedSocial)
  VALUES (nombre_caricaturista, descripcion_cariaturista, portada_caricaturista, pseudonimo_caricaturista, idRedSocial_)
  RETURNING idCaricaturista INTO id;

  return id;
END;
$$ LANGUAGE plpgsql;


DROP FUNCTION IF EXISTS CREAR_RED_SOCIAL;

CREATE OR REPLACE FUNCTION CREAR_RED_SOCIAL (
  nombre_red_social VARCHAR, url_red_social VARCHAR
) RETURNS INTEGER AS $$ 
DECLARE idTipoRed INTEGER := NULL; id INTEGER;
BEGIN

  SELECT idTipo INTO idTipoRed
  FROM TiposRedesSociales 
  WHERE LOWER(nombre) = LOWER(nombre_red_social);

  IF idTIpoRed IS NULL THEN
    INSERT INTO TiposRedesSociales (nombre)
    VALUES (nombre_red_social)
    RETURNING idTipo INTO idTipoRed;
  END IF;

  INSERT INTO RedesSociales (idTipo, enlace)
  VALUES (idTipoRed, url_red_social)
  RETURNING idRedSocial INTO id;

  return id;
END;
$$ LANGUAGE plpgsql;

DROP FUNCTION IF EXISTS CREAR_CARICATURAS;

CREATE OR REPLACE FUNCTION CREAR_CARICATURAS(
  titulo VARCHAR,
  fechaPublicacion DATE,
  visualizaciones INTEGER,
  imagen VARCHAR,
  idCaricaturista INTEGER
) RETURNS INTEGER AS $$
DECLARE id INTEGER;
BEGIN
  INSERT INTO Contenidos (titulo, fechaPublicacion, visualizaciones)
  VALUES (titulo, fechaPublicacion, visualizaciones)
  RETURNING idContenido INTO id;
  
  INSERT INTO Caricaturas
  VALUES (id, imagen, idCaricaturista);

  return id;
END;
$$ LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION CREAR_ACTUALIZACIONES_DE_BLOGS(
  titulo VARCHAR,
  fechaPublicacion DATE,
  visualizaciones INTEGER,
  cuerpo VARCHAR,
  idCategoria INTEGER,
  idBlog INTEGER
) RETURNS INTEGER AS $$
DECLARE id INTEGER;
BEGIN
  INSERT INTO Contenidos (titulo, fechaPublicacion, visualizaciones)
  VALUES (titulo, fechaPublicacion, visualizaciones)
  RETURNING idContenido INTO id;

  INSERT INTO ActualizacionesDeBlogs
  VALUES (id, cuerpo, visualizaciones, idCategoria, idBlog);

  return id;
END;
$$ LANGUAGE plpgsql;