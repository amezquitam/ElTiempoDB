CREATE OR REPLACE PROCEDURE CREATE_MODEL()
AS $$ BEGIN
  CREATE TABLE IF NOT EXISTS Usuarios
  (
    idUsuario serial,
    nombres VARCHAR(50) NOT NULL,
    apellidos VARCHAR(50) NOT NULL,
    correoElectronico VARCHAR(100) NOT NULL,
    contraseña VARCHAR(255) NOT NULL,
    telefono VARCHAR(10),
    nombreUsuario VARCHAR(128),
    PRIMARY KEY (idUsuario),
    CONSTRAINT correoUnico UNIQUE (correoElectronico)
  );

  CREATE TABLE IF NOT EXISTS Autores
  (
    idAutor serial,
    nombres VARCHAR(100) NOT NULL,
    apellidos VARCHAR(100) NOT NULL,
    portada VARCHAR(512),
    descripcion VARCHAR(512),
    PRIMARY KEY (idAutor)
  );

  CREATE TABLE IF NOT EXISTS Escritores
  (
    idAutor integer,
    PRIMARY KEY (idAutor),
    FOREIGN KEY (idAutor) REFERENCES Autores(idAutor)
  );

  CREATE TABLE IF NOT EXISTS Contenidos
  (
    idContenido serial,
    titulo VARCHAR NOT NULL,
    fechaPublicacion date NOT NULL,
    PRIMARY KEY (idContenido)
  );

  CREATE TABLE IF NOT EXISTS Articulos
  (
    idArticulo integer NOT NULL,
    idAutor integer NOT NULL,
    cuerpo VARCHAR(4096) NOT NULL,
    subtitulo VARCHAR(256) NOT NULL,
    portada VARCHAR,
    premium BIT,
    PRIMARY KEY (idArticulo),
    FOREIGN KEY (idArticulo) REFERENCES Contenidos(idContenido),
    FOREIGN KEY (idAutor) REFERENCES Escritores(idAutor)
  );

  CREATE TABLE IF NOT EXISTS Redacciones
  (
    idAutor integer,
    nombre VARCHAR NOT NULL,
    PRIMARY KEY (idAutor),
    FOREIGN KEY (idAutor) REFERENCES Autores(idAutor)
  );

  CREATE TABLE IF NOT EXISTS Secciones
  (
    idSeccion serial,
    nombre VARCHAR NOT NULL,
    PRIMARY KEY (idSeccion)
  );

  CREATE TABLE IF NOT EXISTS SubSecciones
  (
    idSubSeccion serial,
    nombre VARCHAR NOT NULL,
    idSeccion integer NOT NULL,
    PRIMARY KEY (idSubSeccion),
    FOREIGN KEY (idSeccion) REFERENCES Secciones(idSeccion)
  );

  CREATE TABLE IF NOT EXISTS UsuarioSubsecciones
  (
    idUsuario integer,
    idSubSeccion integer,
    PRIMARY KEY (idUsuario, idSubSeccion),
    FOREIGN KEY (idUsuario) REFERENCES Usuarios(idUsuario),
    FOREIGN KEY (idSubSeccion) REFERENCES SubSecciones(idSubSeccion)
  );

  CREATE TABLE IF NOT EXISTS Etiquetas
  (
    idEtiqueta serial,
    nombre VARCHAR NOT NULL,
    PRIMARY KEY (idEtiqueta)
  );

  CREATE TABLE IF NOT EXISTS EtiquetasDeArticulos
  (
    idArticulo integer,
    idEtiqueta integer,
    PRIMARY KEY (idArticulo, idEtiqueta),
    FOREIGN KEY (idArticulo) REFERENCES Articulos(idArticulo),
    FOREIGN KEY (idEtiqueta) REFERENCES Etiquetas(idEtiqueta)
  );

  CREATE TABLE IF NOT EXISTS TiposDePlanes
  (
    idTipoDePlan serial,
    nombre VARCHAR NOT NULL,
    PRIMARY KEY (idTipoDePlan)
  );

  CREATE TABLE IF NOT EXISTS Planes
  (
    idPlan serial,
    precio numeric NOT NULL,
    descripcion VARCHAR,
    idTipo integer NOT NULL,
    duracionEnDias integer NOT NULL,
    PRIMARY KEY (idPlan),
    FOREIGN KEY (idPlan) REFERENCES TiposDePlanes(idTipoDePlan)
  );

  CREATE TABLE IF NOT EXISTS Suscripciones
  (
    idSuscripcion serial,
    fechaInicio date NOT NULL,
    idPlan integer NOT NULL,
    idUsuario integer NOT NULL,
    PRIMARY KEY (idSuscripcion),
    FOREIGN KEY (idPlan) REFERENCES TiposDePlanes(idTipoDePlan),
    FOREIGN KEY (idUsuario) REFERENCES Usuarios(idUsuario)
  );

  CREATE TABLE IF NOT EXISTS TiposRedesSociales
  (
    idTipo serial,
    nombre VARCHAR NOT NULL,
    PRIMARY KEY (idTipo)
  );

  CREATE TABLE IF NOT EXISTS RedesSociales
  (
    idRedSocial serial,
    idTipo integer NOT NULL,
    enlace VARCHAR NOT NULL,
    PRIMARY KEY (idRedSocial),
    FOREIGN KEY (idTipo) REFERENCES TiposRedesSociales(idTipo)
  );

  CREATE TABLE IF NOT EXISTS CategoriasDeBlogs
  (
    idCategoria serial,
    nombre VARCHAR NOT NULL,
    PRIMARY KEY (idCategoria)
  );

  CREATE TABLE IF NOT EXISTS Blogueros
  (
    idBloguero serial,
    nombreCompleto VARCHAR NOT NULL,
    descripcion VARCHAR,
    idRedSocial integer NOT NULL,
      PRIMARY KEY (idBloguero)
  );

  CREATE TABLE IF NOT EXISTS Blogs
  (
    idBlog serial,
    titulo VARCHAR NOT NULL,
    idBloguero integer NOT NULL,
    PRIMARY KEY (idBlog),
    FOREIGN KEY (idBloguero) REFERENCES Blogueros(idBloguero)
  );

  CREATE TABLE IF NOT EXISTS BlogDeUsuarios
  (
    idBlog integer NOT NULL,
    idUsuario integer NOT NULL,
    PRIMARY KEY (idBlog, idUsuario),
    FOREIGN KEY (idUsuario) REFERENCES Usuarios(idUsuario),
    FOREIGN KEY (idBlog) REFERENCES Blogs(idBlog)
  );

  CREATE TABLE IF NOT EXISTS Caricaturistas
  (
    idCaricaturista serial,
    nombre VARCHAR NOT NULL,
    descripcion VARCHAR,
    portada VARCHAR NOT NULL,
    pseudonimo VARCHAR,
    idRedSocial integer NOT NULL,
    PRIMARY KEY (idCaricaturista),
    FOREIGN KEY (idRedSocial) REFERENCES RedesSociales(idRedSocial)
  );

  CREATE TABLE IF NOT EXISTS Caricaturas
  (
    idContenido integer,
    imagen VARCHAR NOT NULL,
    idCaricaturista integer NOT NULL,
    PRIMARY KEY (idContenido),
    FOREIGN KEY (idCaricaturista) REFERENCES Caricaturistas(idCaricaturista)
  );

  CREATE TABLE IF NOT EXISTS ActualizacionesDeBlogs
  (
    idContenido integer,
    cuerpo VARCHAR NOT NULL,
    visualizaciones integer NOT NULL,
    idCategoria integer NOT NULL,
    idBlog integer NOT NULL,
    PRIMARY KEY (idContenido),
    FOREIGN KEY (idContenido) REFERENCES Contenidos(idContenido),
    FOREIGN KEY (idCategoria) REFERENCES CategoriasDeBlogs(idCategoria),
    FOREIGN KEY (idBlog) REFERENCES Blogs(idBlog)
  );

  CREATE TABLE IF NOT EXISTS Galerias
  (
    idGaleria integer,
    autor VARCHAR NOT NULL,
    portada VARCHAR NOT NULL,
    PRIMARY KEY (idGaleria),
    FOREIGN KEY (idGaleria) REFERENCES Contenidos(idContenido)
  );

  CREATE TABLE IF NOT EXISTS Historias
  (
    idHistoria serial,
    idGaleria integer NOT NULL,
    imagen VARCHAR NOT NULL,
    cuerpo VARCHAR,
    PRIMARY KEY (idHistoria),
    FOREIGN KEY (idGaleria) REFERENCES Galerias(idGaleria)
  );

  CREATE TABLE IF NOT EXISTS Podcasts
  (
    idPodcast serial,
    titulo VARCHAR NOT NULL,
    portada VARCHAR NOT NULL,
    PRIMARY KEY (idPodcast)
  );

  CREATE TABLE IF NOT EXISTS EpisodiosPodcasts
  (
    idArticulo integer,
    idPodcast integer NOT NULL,
    PRIMARY KEY (idArticulo),
    FOREIGN KEY (idArticulo) REFERENCES Articulos(idArticulo),
    FOREIGN KEY (idPodcast) REFERENCES Podcasts(idPodcast)
  );

  CREATE TABLE IF NOT EXISTS PodcastsUsuarios
  (
    idUsuario integer,
    idPodcast integer,
    PRIMARY KEY (idUsuario, idPodcast),
    FOREIGN KEY (idUsuario) REFERENCES Usuarios(idUsuario),
    FOREIGN KEY (idPodcast) REFERENCES Podcasts(idPodcast)
  );

  CREATE TABLE IF NOT EXISTS TemasDelDia
  (
    idTemaDelDia serial,
    nombre VARCHAR NOT NULL,
    PRIMARY KEY (idTemaDelDia)
  );

  CREATE TABLE IF NOT EXISTS Noticias
  (
    idArticulo integer,
    idTemaDelDia integer NOT NULL,
    PRIMARY KEY (idArticulo),
    FOREIGN KEY (idArticulo) REFERENCES Articulos(idArticulo),
    FOREIGN KEY (idTemaDelDia) REFERENCES TemasDelDia(idTemaDelDia)
  );

  CREATE TABLE IF NOT EXISTS Comentarios
  (
    idComentario serial,
    cuerpo VARCHAR NOT NULL,
    fechaPublicacion date NOT NULL,
    idUsuario integer NOT NULL,
    PRIMARY KEY (idComentario),
    FOREIGN KEY (idUsuario) REFERENCES Usuarios(idUsuario)
  );

  CREATE TABLE IF NOT EXISTS ComentariosBlogs
  (
    idComentario integer,
    idContenido integer NOT NULL,
    PRIMARY KEY (idComentario),
    FOREIGN KEY (idContenido) REFERENCES ActualizacionesDeBlogs(idContenido),
    FOREIGN KEY (idComentario) REFERENCES Comentarios(idComentario)
  );

  CREATE TABLE IF NOT EXISTS ComentariosArticulos
  (
    idComentario integer,
    PRIMARY KEY (idComentario),
    FOREIGN KEY (idComentario) REFERENCES Comentarios(idComentario)
  );

  CREATE TABLE IF NOT EXISTS ComentariosPrincipales
  (
    idComentario integer,
    PRIMARY KEY (idComentario),
    FOREIGN KEY (idComentario) REFERENCES ComentariosArticulos(idComentario)
  );

  CREATE TABLE IF NOT EXISTS ComentariosSecundarios
  (
    idComentario integer,
    idComentarioPrincipal integer NOT NULL,
    PRIMARY KEY (idComentario),
    FOREIGN KEY (idComentario) REFERENCES ComentariosArticulos(idComentario),
    FOREIGN KEY (idComentarioPrincipal) REFERENCES ComentariosPrincipales(idComentario)
  );

  CREATE TABLE IF NOT EXISTS Votos
  (
    idVoto serial,
    idUsuario integer NOT NULL,
    idComentario integer NOT NULL,
    voto boolean NOT NULL,
    PRIMARY KEY (idVoto),
    FOREIGN KEY (idUsuario) REFERENCES Usuarios(idUsuario),
    FOREIGN KEY (idComentario) REFERENCES ComentariosArticulos(idComentario) 
  );

  CREATE TABLE IF NOT EXISTS Juegos
  (
    idJuego serial,
    logo VARCHAR NOT NULL,
    nombre VARCHAR NOT NULL,
    descripcion VARCHAR,
    PRIMARY KEY (idJuego)
  );

  CREATE TABLE IF NOT EXISTS ActualizacionesJuegos
  (
    idActualización serial,
    enlace VARCHAR NOT NULL,
    idJuego integer NOT NULL,
    PRIMARY KEY (idActualización),
    FOREIGN KEY (idJuego) REFERENCES Juegos(idJuego) 
  );

  CREATE TABLE IF NOT EXISTS TiposDeCondolencias
  (
    idTipo serial,
    nombre VARCHAR NOT NULL,
    PRIMARY KEY (idTipo)
  );

  CREATE TABLE IF NOT EXISTS Obituarios
  (
    idObituario serial,
    nombres VARCHAR NOT NULL,
    apellidos VARCHAR NOT NULL,
    titulo VARCHAR NOT NULL,
    comentario VARCHAR NOT NULL,
    fecha date NOT NULL,
    lugar VARCHAR NOT NULL,
    autores VARCHAR NOT NULL,
    cuerpo VARCHAR NOT NULL,
    idTipo integer NOT NULL,
    PRIMARY KEY (idObituario),
    FOREIGN KEY (idTipo) REFERENCES TiposDeCondolencias(idTipo)
  );

  RAISE NOTICE 'Se han creado todas las tablas existosamente';

END $$ LANGUAGE plpgsql;


CREATE OR REPLACE PROCEDURE DROP_MODEL()
AS $$ BEGIN
  DROP TABLE IF EXISTS Obituarios;
  DROP TABLE IF EXISTS TiposDeCondolencias;
  DROP TABLE IF EXISTS ActualizacionesJuegos;
  DROP TABLE IF EXISTS Juegos;
  DROP TABLE IF EXISTS Votos;
  DROP TABLE IF EXISTS ComentariosSecundarios;
  DROP TABLE IF EXISTS ComentariosPrincipales;
  DROP TABLE IF EXISTS ComentariosArticulos;
  DROP TABLE IF EXISTS ComentariosBlogs;
  DROP TABLE IF EXISTS Comentarios;
  DROP TABLE IF EXISTS Noticias;
  DROP TABLE IF EXISTS TemasDelDia;
  DROP TABLE IF EXISTS PodcastsUsuarios;
  DROP TABLE IF EXISTS EpisodiosPodcasts;
  DROP TABLE IF EXISTS Podcasts;
  DROP TABLE IF EXISTS Historias;
  DROP TABLE IF EXISTS Galerias;
  DROP TABLE IF EXISTS ActualizacionesDeBlogs;
  DROP TABLE IF EXISTS Caricaturas;
  DROP TABLE IF EXISTS Caricaturistas;
  DROP TABLE IF EXISTS BlogDeUsuarios;
  DROP TABLE IF EXISTS Blogs;
  DROP TABLE IF EXISTS Blogueros;
  DROP TABLE IF EXISTS CategoriasDeBlogs;
  DROP TABLE IF EXISTS RedesSociales;
  DROP TABLE IF EXISTS tiposRedesSociales;
  DROP TABLE IF EXISTS Suscripciones;
  DROP TABLE IF EXISTS Planes;
  DROP TABLE IF EXISTS TiposDePlanes;
  DROP TABLE IF EXISTS EtiquetasDeArticulos;
  DROP TABLE IF EXISTS Etiquetas;
  DROP TABLE IF EXISTS UsuarioSubsecciones;
  DROP TABLE IF EXISTS SubSecciones;
  DROP TABLE IF EXISTS Secciones;
  DROP TABLE IF EXISTS Redacciones;
  DROP TABLE IF EXISTS Articulos;
  DROP TABLE IF EXISTS Contenidos;
  DROP TABLE IF EXISTS Escritores;
  DROP TABLE IF EXISTS Autores;
  DROP TABLE IF EXISTS Usuarios;

  RAISE NOTICE 'Se han eliminado todas las tablas existosamente';
END $$ LANGUAGE plpgsql;
