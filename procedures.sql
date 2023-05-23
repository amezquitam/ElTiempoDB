CREATE OR REPLACE PROCEDURE RESET_DB()
AS $$ BEGIN
  CALL DROP_MODEL();
  CALL CREATE_MODEL();
  CALL POPULATE_MODEL();
END $$ LANGUAGE plpgsql;


CREATE OR REPLACE PROCEDURE RELACIONAR_USUARIOS_CON_SUBSECCIONES()
AS $$ 
DECLARE 
  id_usuario INT;
  id_subseccion INT;
BEGIN
  FOR id_usuario IN SELECT idUsuario FROM Usuarios LOOP
    FOR id_subseccion IN SELECT idSubSeccion FROM SubSecciones LOOP
      IF random() < 0.1 THEN
        INSERT INTO UsuarioSubsecciones VALUES (id_usuario, id_subseccion);
      END IF;
    END LOOP;
  END LOOP;

END $$ LANGUAGE plpgsql;
