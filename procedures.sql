CREATE OR REPLACE PROCEDURE RESET_DB()
AS $$ BEGIN
  CALL DROP_MODEL();
  CALL CREATE_MODEL();
  CALL POPULATE_MODEL();
END $$ LANGUAGE plpgsql;


CREATE OR REPLACE PROCEDURE RELACIONAR_USUARIOS_CON_SUBSECCIONES(factor FLOAT)
AS $$ 
DECLARE 
  id_usuario INT;
  id_subseccion INT;
BEGIN
  FOR id_usuario IN SELECT idUsuario FROM Usuarios LOOP
    FOR id_subseccion IN SELECT idSubSeccion FROM SubSecciones LOOP
      IF random() < factor THEN
        INSERT INTO UsuarioSubsecciones VALUES (id_usuario, id_subseccion);
      END IF;
    END LOOP;
  END LOOP;

END $$ LANGUAGE plpgsql;



CREATE OR REPLACE PROCEDURE RELACIONAR_ARTICULOS_CON_ETIQUETAS(factor FLOAT)
AS $$ 
DECLARE 
  id_articulo INT;
  id_etiqueta INT;
BEGIN
  FOR id_articulo IN SELECT idArticulo FROM Articulos LOOP
    FOR id_etiqueta IN SELECT idEtiqueta FROM Etiquetas LOOP
      IF random() < factor THEN
        INSERT INTO EtiquetasDeArticulos VALUES (id_articulo, id_etiqueta);
      END IF;
    END LOOP;
  END LOOP;

END $$ LANGUAGE plpgsql;


CREATE OR REPLACE PROCEDURE CREAR_SUSCRIPCIONES(factor FLOAT)
AS $$ 
DECLARE 
  id_usuario INT;
  id_plan INT;
  cantidad_planes INT;
BEGIN
  SELECT COUNT(*) INTO cantidad_planes FROM Planes;
  
  FOR id_usuario IN SELECT idUsuario FROM Usuarios LOOP
    IF random() > factor THEN
      id_plan := random() * (cantidad_planes - 1) + 1;
      INSERT INTO Suscripciones (fechaInicio, idPlan, idUsuario) VALUES (NOW(), id_plan, id_usuario);
    END IF;
  END LOOP;

END $$ LANGUAGE plpgsql;
