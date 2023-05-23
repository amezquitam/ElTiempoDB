
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


CREATE OR REPLACE FUNCTION CREAR_ARTICULO (
  titulo VARCHAR,
  fechaPublicacion date,
  idAutor integer,
  cuerpo VARCHAR(4096),
  subtitulo VARCHAR(256),
  portada VARCHAR,
  exclusividad VARCHAR
) RETURNS INTEGER AS $$
DECLARE id INTEGER;
BEGIN

  INSERT INTO Contenidos (titulo, fechaPublicacion)
  VALUES (titulo, fechaPublicacion)
  RETURNING idContenido INTO id;

  INSERT INTO Articulos
  VALUES (id, idAutor, cuerpo, subtitulo, portada, exclusividad)
  RETURNING idArticulo INTO id;

  return id;
END;
$$ LANGUAGE plpgsql;


CREATE OR REPLACE FUNCTION CREAR_SECCION (nombre VARCHAR) RETURNS INTEGER AS $$ 
DECLARE id INTEGER;
BEGIN
  INSERT INTO Secciones (nombre)
  VALUES (nombre)
  RETURNING idSeccion INTO id;
  return id;
END;
$$ LANGUAGE plpgsql;


CREATE OR REPLACE FUNCTION CREAR_SUBSECCION (idSeccion INT, nombre VARCHAR) RETURNS INTEGER AS $$ 
DECLARE id INTEGER;
BEGIN
  INSERT INTO SubSecciones (nombre, idSeccion)
  VALUES (nombre, idSeccion)
  RETURNING idSubSeccion INTO id;
  return id;
END;
$$ LANGUAGE plpgsql;

