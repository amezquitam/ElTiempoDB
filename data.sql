
CREATE OR REPLACE PROCEDURE POPULATE_MODEL()
AS $$  
  DECLARE id INT;
BEGIN

  PERFORM CREAR_USUARIO('Miguel', 'Amezquita', 'miguelamezquita@correo.com', 'potato123', '542154584', 'MiguelAM');
  PERFORM CREAR_USUARIO('Jorge', 'Montolla', 'jorgemontolla@correo.com', 'montesino19', '9845621', 'JorgeMO');
  PERFORM CREAR_USUARIO('Hernesto', 'Polo', 'hernestopolo@correo.com', 'heraldo23', '6582314', 'Herno19');
  PERFORM CREAR_USUARIO('Angélica', 'Moreno', 'angiemor@correo.com', 'patatas28', '6845123', 'Angie7');
  PERFORM CREAR_USUARIO('Jesús', 'Ibáñez', 'jebañez@correo.com', 'indra23', '6852154', 'Jesu23');
  PERFORM CREAR_USUARIO('Ricardo', 'Valdes', 'ricarvaldes@correo.com', 'manillero56', '6957415', 'RicardoV');
  PERFORM CREAR_USUARIO('Julieta', 'Ropero', 'julie@correo.com', 'meseta5775', '6325478', 'JulietR');
  PERFORM CREAR_USUARIO('Tartaro', 'De las Bermúdez', 'tartaro@correo.com', 'chimichurri85', '6985421', 'ElTartaro');
  PERFORM CREAR_USUARIO('Juan', 'Polo', 'polopolo@correo.com', 'hyung483', '6254893', 'JuanPolo');
  PERFORM CREAR_USUARIO('Maria José', 'Quintero', 'mariaqui@correo.com', 'MariaQL123ñ', '6847512', 'MariaQui');
  PERFORM CREAR_USUARIO('Alex', 'Cotes', 'alexco@correo.com', 'ALCO0910', '6874215', 'AlexCotes');
  PERFORM CREAR_USUARIO('John', 'Doe', 'john.doe@example.com', 'password1', '1234567890', 'johndoe');
  PERFORM CREAR_USUARIO('Jane', 'Smith', 'jane.smith@example.com', 'password2', '9876543210', 'janesmith');
  PERFORM CREAR_USUARIO('Michael', 'Johnson', 'michael.johnson@example.com', 'password3', '5555555555', 'michaeljohnson');
  PERFORM CREAR_USUARIO('Emily', 'Brown', 'emily.brown@example.com', 'password4', '9999999999', 'emilybrown');
  PERFORM CREAR_USUARIO('David', 'Taylor', 'david.taylor@example.com', 'password5', '1111111111', 'davidtaylor');
  PERFORM CREAR_USUARIO('Olivia', 'Miller', 'olivia.miller@example.com', 'password6', '2222222222', 'oliviamiller');
  PERFORM CREAR_USUARIO('James', 'Anderson', 'james.anderson@example.com', 'password7', '3333333333', 'jamesanderson');
  PERFORM CREAR_USUARIO('Sophia', 'Thomas', 'sophia.thomas@example.com', 'password8', '4444444444', 'sophiathomas');
  PERFORM CREAR_USUARIO('Daniel', 'Jackson', 'daniel.jackson@example.com', 'password9', '6666666666', 'danieljackson');
  PERFORM CREAR_USUARIO('Ava', 'White', 'ava.white@example.com', 'password10', '7777777777', 'avawhite');
  PERFORM CREAR_USUARIO('Alexander', 'Harris', 'alexander.harris@example.com', 'password11', '8888888888', 'alexanderharris');
  PERFORM CREAR_USUARIO('Mia', 'Clark', 'mia.clark@example.com', 'password12', '1212121212', 'miaclark');
  PERFORM CREAR_USUARIO('Ethan', 'Lewis', 'ethan.lewis@example.com', 'password13', '3434343434', 'ethanlewis');
  PERFORM CREAR_USUARIO('Charlotte', 'Walker', 'charlotte.walker@example.com', 'password14', '5656565656', 'charlottewalker');
  PERFORM CREAR_USUARIO('Liam', 'Hall', 'liam.hall@example.com', 'password15', '7878787878', 'liamhall');
  PERFORM CREAR_USUARIO('Amelia', 'Green', 'amelia.green@example.com', 'password16', '9090909090', 'ameliagreen');
  PERFORM CREAR_USUARIO('Benjamin', 'Adams', 'benjamin.adams@example.com', 'password17', '2323232323', 'benjaminadams');
  PERFORM CREAR_USUARIO('Harper', 'Baker', 'harper.baker@example.com', 'password18', '4545454545', 'harperbaker');
  PERFORM CREAR_USUARIO('Sebastian', 'Perez', 'sebastian.perez@example.com', 'password19', '6767676767', 'sebastianperez');
  PERFORM CREAR_USUARIO('Evelyn', 'Gonzalez', 'evelyn.gonzalez@example.com', 'password20', '8989898989', 'evelyngonzalez');
  PERFORM CREAR_USUARIO('Jackson', 'Smith', 'jackson.smith@example.com', 'password21', '1212121212', 'jacksonsmith');
  PERFORM CREAR_USUARIO('Grace', 'Davis', 'grace.davis@example.com', 'password22', '3434343434', 'gracedavis');
  PERFORM CREAR_USUARIO('Lucas', 'Anderson', 'lucas.anderson@example.com', 'password23', '5656565656', 'lucasanderson');
  PERFORM CREAR_USUARIO('Chloe', 'Thomas', 'chloe.thomas@example.com', 'password24', '7878787878', 'chloethomas');
  PERFORM CREAR_USUARIO('Logan', 'Martinez', 'logan.martinez@example.com', 'password25', '9090909090', 'loganmartinez');
  PERFORM CREAR_USUARIO('Zoe', 'Hernandez', 'zoe.hernandez@example.com', 'password26', '2323232323', 'zoehernandez');
  PERFORM CREAR_USUARIO('Samuel', 'Lopez', 'samuel.lopez@example.com', 'password27', '4545454545', 'samuellopez');
  PERFORM CREAR_USUARIO('Avery', 'Wilson', 'avery.wilson@example.com', 'password28', '6767676767', 'averywilson');
  PERFORM CREAR_USUARIO('Lily', 'Garcia', 'lily.garcia@example.com', 'password29', '8989898989', 'lilygarcia');
  PERFORM CREAR_USUARIO('Ryan', 'Lee', 'ryan.lee@example.com', 'password30', '1212121212', 'ryanlee');
  PERFORM CREAR_USUARIO('Leo', 'Young', 'leo.young@example.com', 'password31', '3434343434', 'leoyoung');
  PERFORM CREAR_USUARIO('Victoria', 'Brown', 'victoria.brown@example.com', 'password32', '5656565656', 'victoriabrown');
  PERFORM CREAR_USUARIO('Jack', 'Lopez', 'jack.lopez@example.com', 'password33', '7878787878', 'jacklopez');
  PERFORM CREAR_USUARIO('Penelope', 'Gonzalez', 'penelope.gonzalez@example.com', 'password34', '9090909090', 'penelopegonzalez');

  RAISE NOTICE 'Se han agregado todos los usuarios existosamente';


  PERFORM CREAR_ESCRITOR('Gabriel', 'García Márquez', 'https://ruta-imagen1', 'Ganador del Premio Nobel de Literatura, autor de Cien años de soledad.');
  PERFORM CREAR_ESCRITOR('J.K.', 'Rowling', 'https://ruta-imagen2', 'Autora de la saga de Harry Potter.');
  PERFORM CREAR_ESCRITOR('Stephen', 'King', 'https://ruta-imagen3', 'Autor de numerosas novelas de terror, como It y El resplandor.');
  PERFORM CREAR_ESCRITOR('Haruki', 'Murakami', 'https://ruta-imagen4', 'Escritor japonés conocido por obras como Tokio blues y 1Q84.');
  PERFORM CREAR_ESCRITOR('Jane', 'Austen', 'https://ruta-imagen5', 'Autora británica del siglo XIX, conocida por Orgullo y prejuicio.');
  PERFORM CREAR_ESCRITOR('George', 'Orwell', 'https://ruta-imagen6', 'Autor de 1984 y Rebelión en la granja.');
  PERFORM CREAR_ESCRITOR('Fyodor', 'Dostoevsky', 'https://ruta-imagen7', 'Escritor ruso reconocido por obras como Crimen y castigo y Los hermanos Karamazov.');
  PERFORM CREAR_ESCRITOR('Virginia', 'Woolf', 'https://ruta-imagen8', 'Destacada autora modernista británica, conocida por La señora Dalloway y Al faro.');
  PERFORM CREAR_ESCRITOR('Ernest', 'Hemingway', 'https://ruta-imagen9', 'Escritor estadounidense ganador del Premio Nobel, autor de El viejo y el mar.');
  PERFORM CREAR_ESCRITOR('Gabriela', 'Mistral', 'https://ruta-imagen10', 'Poetisa chilena, primera mujer latinoamericana en ganar el Premio Nobel de Literatura.');
  PERFORM CREAR_ESCRITOR('Albert', 'Camus', 'https://ruta-imagen11', 'Filósofo y escritor francés, autor de El extranjero y La peste.');
  PERFORM CREAR_ESCRITOR('Isabel', 'Allende', 'https://ruta-imagen12', 'Escritora chilena conocida por obras como La casa de los espíritus.');
  PERFORM CREAR_ESCRITOR('Mario', 'Vargas Llosa', 'https://ruta-imagen13', 'Escritor peruano ganador del Premio Nobel, autor de La ciudad y los perros.');
  PERFORM CREAR_ESCRITOR('Toni', 'Morrison', 'https://ruta-imagen14', 'Escritora estadounidense ganadora del Premio Nobel, autora de Beloved.');
  PERFORM CREAR_ESCRITOR('Charles', 'Dickens', 'https://ruta-imagen15', 'Autor británico del siglo XIX, conocido por obras como Oliver Twist y David Copperfield.');
  PERFORM CREAR_ESCRITOR('Pablo', 'Neruda', 'https://ruta-imagen16', 'Poeta chileno ganador del Premio Nobel, autor de Veinte poemas de amor y una canción desesperada.');
  PERFORM CREAR_ESCRITOR('Emily', 'Brontë', 'https://ruta-imagen17', 'Escritora británica del siglo XIX, autora de Cumbres borrascosas.');
  PERFORM CREAR_ESCRITOR('Leo', 'Tolstoy', 'https://ruta-imagen18', 'Escritor ruso reconocido por obras como Guerra y paz y Anna Karenina.');
  PERFORM CREAR_ESCRITOR('Mark', 'Twain', 'https://ruta-imagen19', 'Escritor estadounidense conocido por Las aventuras de Tom Sawyer y Las aventuras de Huckleberry Finn.');
  PERFORM CREAR_ESCRITOR('Agatha', 'Christie', 'https://ruta-imagen20', 'Escritora británica de novelas policíacas, creadora de Hercule Poirot y Miss Marple.');
  PERFORM CREAR_ESCRITOR('Jorge Luis', 'Borges', 'https://ruta-imagen21', 'Escritor argentino conocido por su obra de cuentos y ensayos.');
  PERFORM CREAR_ESCRITOR('Octavio', 'Paz', 'https://ruta-imagen22', 'Poeta mexicano ganador del Premio Nobel, autor de El laberinto de la soledad.');
  PERFORM CREAR_ESCRITOR('Arthur', 'Conan Doyle', 'https://ruta-imagen23', 'Escritor británico creador del famoso detective Sherlock Holmes.');
  PERFORM CREAR_ESCRITOR('Gustave', 'Flaubert', 'https://ruta-imagen24', 'Escritor francés conocido por su obra Madame Bovary.');
  PERFORM CREAR_ESCRITOR('Hermann', 'Hesse', 'https://ruta-imagen25', 'Escritor alemán ganador del Premio Nobel, autor de Siddhartha y El lobo estepario.');
  PERFORM CREAR_ESCRITOR('Oscar', 'Wilde', 'https://ruta-imagen26', 'Escritor irlandés conocido por su obra El retrato de Dorian Gray.');
  PERFORM CREAR_ESCRITOR('William', 'Shakespeare', 'https://ruta-imagen27', 'Dramaturgo y poeta inglés, considerado uno de los más grandes escritores de la literatura mundial.');
  PERFORM CREAR_ESCRITOR('Antoine', 'de Saint-Exupéry', 'https://ruta-imagen28', 'Escritor francés autor de El principito.');
  PERFORM CREAR_ESCRITOR('Rabindranath', 'Tagore', 'https://ruta-imagen29', 'Escritor y poeta indio ganador del Premio Nobel, autor de Gitanjali.');
  PERFORM CREAR_ESCRITOR('Miguel de', 'Cervantes', 'https://ruta-imagen30', 'Escritor español autor de Don Quijote de la Mancha.');
  PERFORM CREAR_ESCRITOR('Gabrielle', 'Zevin', 'https://ruta-imagen31', 'Escritora estadounidense conocida por su obra La ladrona de libros.');
  PERFORM CREAR_ESCRITOR('Paulo', 'Coelho', 'https://ruta-imagen32', 'Escritor brasileño autor de El alquimista y Brida.');
  PERFORM CREAR_ESCRITOR('Homer', '', 'https://ruta-imagen33', 'Poeta de la antigua Grecia, autor de La Ilíada y La Odisea.');
  PERFORM CREAR_ESCRITOR('J.R.R.', 'Tolkien', 'https://ruta-imagen34', 'Escritor británico autor de El Señor de los Anillos y El Hobbit.');
  PERFORM CREAR_ESCRITOR('Jane', 'Austen', 'https://ruta-imagen35', 'Escritora británica del siglo XIX, conocida por Orgullo y prejuicio.');
  PERFORM CREAR_ESCRITOR('George', 'Orwell', 'https://ruta-imagen36', 'Autor de 1984 y Rebelión en la granja.');
  PERFORM CREAR_ESCRITOR('Fyodor', 'Dostoevsky', 'https://ruta-imagen37', 'Escritor ruso reconocido por obras como Crimen y castigo y Los hermanos Karamazov.');
  PERFORM CREAR_ESCRITOR('Virginia', 'Woolf', 'https://ruta-imagen38', 'Destacada autora modernista británica, conocida por La señora Dalloway y Al faro.');
  PERFORM CREAR_ESCRITOR('Ernest', 'Hemingway', 'https://ruta-imagen39', 'Escritor estadounidense ganador del Premio Nobel, autor de El viejo y el mar.');
  PERFORM CREAR_ESCRITOR('Gabriela', 'Mistral', 'https://ruta-imagen40', 'Poetisa chilena, primera mujer latinoamericana en ganar el Premio Nobel de Literatura.');
  PERFORM CREAR_ESCRITOR('Albert', 'Camus', 'https://ruta-imagen41', 'Filósofo y escritor francés, autor de El extranjero y La peste.');
  PERFORM CREAR_ESCRITOR('Isabel', 'Allende', 'https://ruta-imagen42', 'Escritora chilena conocida por obras como La casa de los espíritus.');
  PERFORM CREAR_ESCRITOR('Mario', 'Vargas Llosa', 'https://ruta-imagen43', 'Escritor peruano ganador del Premio Nobel, autor de La ciudad y los perros.');
  PERFORM CREAR_ESCRITOR('Toni', 'Morrison', 'https://ruta-imagen44', 'Escritora estadounidense ganadora del Premio Nobel, autora de Beloved.');
  PERFORM CREAR_ESCRITOR('Charles', 'Dickens', 'https://ruta-imagen45', 'Autor británico del siglo XIX, conocido por obras como Oliver Twist y David Copperfield.');
  PERFORM CREAR_ESCRITOR('Pablo', 'Neruda', 'https://ruta-imagen46', 'Poeta chileno ganador del Premio Nobel, autor de Veinte poemas de amor y una canción desesperada.');
  PERFORM CREAR_ESCRITOR('Emily', 'Brontë', 'https://ruta-imagen47', 'Escritora británica del siglo XIX, autora de Cumbres borrascosas.');
  PERFORM CREAR_ESCRITOR('Leo', 'Tolstoy', 'https://ruta-imagen48', 'Escritor ruso reconocido por obras como Guerra y paz y Anna Karenina.');
  PERFORM CREAR_ESCRITOR('Mark', 'Twain', 'https://ruta-imagen49', 'Escritor estadounidense conocido por Las aventuras de Tom Sawyer y Las aventuras de Huckleberry Finn.');
  PERFORM CREAR_ESCRITOR('Agatha', 'Christie', 'https://ruta-imagen50', 'Escritora británica de novelas policíacas, creadora de Hercule Poirot y Miss Marple.');

  RAISE NOTICE 'Se han agregado todos los escritores existosamente';


  id := CREAR_SECCION('Justicia');
  PERFORM CREAR_SUBSECCION(id, 'Conflicto y Narcotráfico');
  PERFORM CREAR_SUBSECCION(id, 'Investigación');
  PERFORM CREAR_SUBSECCION(id, 'Delitos');
  PERFORM CREAR_SUBSECCION(id, 'Servicios');
  PERFORM CREAR_SUBSECCION(id, 'Paz y Derechos');

  id := CREAR_SECCION('Cultura');
  PERFORM CREAR_SUBSECCION(id, 'Arte y teatro');
  PERFORM CREAR_SUBSECCION(id, 'Música y Libros');
  PERFORM CREAR_SUBSECCION(id, 'Gastronomía');
  PERFORM CREAR_SUBSECCION(id, 'Entretenimiento');
  PERFORM CREAR_SUBSECCION(id, 'Gente');

  id := CREAR_SECCION('Colombia');
  PERFORM CREAR_SUBSECCION(id, 'Bogotá');
  PERFORM CREAR_SUBSECCION(id, 'Barranquilla');
  PERFORM CREAR_SUBSECCION(id, 'Cali');
  PERFORM CREAR_SUBSECCION(id, 'Santander');

  id := CREAR_SECCION('Vida');
  PERFORM CREAR_SUBSECCION(id, 'Educación');
  PERFORM CREAR_SUBSECCION(id, 'Viajar');
  PERFORM CREAR_SUBSECCION(id, 'Medio ambiente');
  PERFORM CREAR_SUBSECCION(id, 'Mujeres');

  id := CREAR_SECCION('Economía');
  PERFORM CREAR_SUBSECCION(id, 'Finanzas personales');
  PERFORM CREAR_SUBSECCION(id, 'Empresas');
  PERFORM CREAR_SUBSECCION(id, 'Sectores');
  PERFORM CREAR_SUBSECCION(id, 'Sector financiero');

  id := CREAR_SECCION('Deportes');
  PERFORM CREAR_SUBSECCION(id, 'Futbol internacional');
  PERFORM CREAR_SUBSECCION(id, 'Futbol colombiano');
  PERFORM CREAR_SUBSECCION(id, 'Tenis');
  PERFORM CREAR_SUBSECCION(id, 'Ciclismo');
  PERFORM CREAR_SUBSECCION(id, 'Automovilismo');
  PERFORM CREAR_SUBSECCION(id, 'Más deportes');
  PERFORM CREAR_SUBSECCION(id, 'Copa américa 2019');

  id := CREAR_SECCION('Política');
  PERFORM CREAR_SUBSECCION(id, 'Gobierno');
  PERFORM CREAR_SUBSECCION(id, 'Congreso');
  PERFORM CREAR_SUBSECCION(id, 'Proceso de paz');
  PERFORM CREAR_SUBSECCION(id, 'Partidos políticos');

  id := CREAR_SECCION('Internacional');
  PERFORM CREAR_SUBSECCION(id, 'Latinoamérica');
  PERFORM CREAR_SUBSECCION(id, 'Venezuela');
  PERFORM CREAR_SUBSECCION(id, 'EEUU y Canadá');
  PERFORM CREAR_SUBSECCION(id, 'Europa');
  PERFORM CREAR_SUBSECCION(id, 'África');
  PERFORM CREAR_SUBSECCION(id, 'Medio Oriente');
  PERFORM CREAR_SUBSECCION(id, 'Asia');
  PERFORM CREAR_SUBSECCION(id, 'Mas regiones');

  id := CREAR_SECCION('Tecnología');
  PERFORM CREAR_SUBSECCION(id, 'Apps');
  PERFORM CREAR_SUBSECCION(id, 'Dispositivos');
  PERFORM CREAR_SUBSECCION(id, 'Video juegos');

  RAISE NOTICE 'Se han agregado todas las secciones y subseccaiones existosamente';

  CALL RELACIONAR_USUARIOS_CON_SUBSECCIONES();

  RAISE NOTICE 'Se han agregado las subsecciones guardadas por usuario existosamente';




END $$ LANGUAGE plpgsql;