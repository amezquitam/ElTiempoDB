
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

  PERFORM CREAR_REDACCION('Fyodor', 'Dostoevsky', 'https://ruta-imagen37', 'Escritor ruso reconocido por obras como Crimen y castigo y Los hermanos Karamazov.', 'Politica');
  PERFORM CREAR_REDACCION('Virginia', 'Woolf', 'https://ruta-imagen38', 'Destacada autora modernista británica, conocida por La señora Dalloway y Al faro.', 'Deportes');
  PERFORM CREAR_REDACCION('Ernest', 'Hemingway', 'https://ruta-imagen39', 'Escritor estadounidense ganador del Premio Nobel, autor de El viejo y el mar.', 'Economia');
  PERFORM CREAR_REDACCION('Gabriela', 'Mistral', 'https://ruta-imagen40', 'Poetisa chilena, primera mujer latinoamericana en ganar el Premio Nobel de Literatura.', 'Cultura');
  PERFORM CREAR_REDACCION('Albert', 'Camus', 'https://ruta-imagen41', 'Filósofo y escritor francés, autor de El extranjero y La peste.', 'Tecnologia');
  PERFORM CREAR_REDACCION('Isabel', 'Allende', 'https://ruta-imagen42', 'Escritora chilena conocida por obras como La casa de los espíritus.', 'Entretenimiento');
  PERFORM CREAR_REDACCION('Mario', 'Vargas Llosa', 'https://ruta-imagen43', 'Escritor peruano ganador del Premio Nobel, autor de La ciudad y los perros.', 'Salud');
  PERFORM CREAR_REDACCION('Toni', 'Morrison', 'https://ruta-imagen44', 'Escritora estadounidense ganadora del Premio Nobel, autora de Beloved.', 'Internacional');
  PERFORM CREAR_REDACCION('Charles', 'Dickens', 'https://ruta-imagen45', 'Autor británico del siglo XIX, conocido por obras como Oliver Twist y David Copperfield.', 'Opiniones');
  PERFORM CREAR_REDACCION('Pablo', 'Neruda', 'https://ruta-imagen46', 'Poeta chileno ganador del Premio Nobel, autor de Veinte poemas de amor y una canción desesperada.', 'Medio Ambiente');
  PERFORM CREAR_REDACCION('Emily', 'Brontë', 'https://ruta-imagen47', 'Escritora británica del siglo XIX, autora de Cumbres borrascosas.', 'Ciencia');
  PERFORM CREAR_REDACCION('Leo', 'Tolstoy', 'https://ruta-imagen48', 'Escritor ruso reconocido por obras como Guerra y paz y Anna Karenina.', 'Moda');
  PERFORM CREAR_REDACCION('Mark', 'Twain', 'https://ruta-imagen49', 'Escritor estadounidense conocido por Las aventuras de Tom Sawyer y Las aventuras de Huckleberry Finn.', 'Viajes');
  PERFORM CREAR_REDACCION('Agatha', 'Christie', 'https://ruta-imagen50', 'Escritora británica de novelas policíacas, creadora de Hercule Poirot y Miss Marple.', 'Gastronomia');

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

  PERFORM CREAR_ARTICULO(1, 'Estudio revela aumento de la contaminación en la ciudad',	'2023-05-21',	'Un estudio realizado por expertos en medio ambiente ha revelado un preocupante aumento de los nivele...',	'Impacto en la salud de los ciudadanos',	'imagen2.jpg',	'0', 20);
  PERFORM CREAR_ARTICULO(2, 'Entrevista exclusiva con reconocido cineasta',	'2023-05-20',	'En una entrevista exclusiva, el reconocido cineasta habla sobre su más reciente película, sus inspiraci...',	'Detrás de cámaras de su último éxito',	'imagen3.jpg',	'1', 10);
  PERFORM CREAR_ARTICULO(3, 'Nuevas investigaciones arrojan luz sobre caso de corrupción',	'2023-05-19',	'Las últimas investigaciones sobre el caso de corrupción que ha sacudido al país revelan nuevos detalles ...',	'Implicaciones políticas en juego',	'imagen4.jpg',	'0', 6);
  PERFORM CREAR_ARTICULO(4, 'Expertos advierten sobre los peligros del uso excesivo de las redes sociales',	'2023-05-18',	'Diversos expertos en psicología y sociología han alertado sobre los riesgos para la salud mental y las re...',	'Impacto en la sociedad actual',	'imagen5.jpg',	'1', 2);
  PERFORM CREAR_ARTICULO(5, 'Equipo local se prepara para el partido de semifinales',	'2023-05-17',	'El equipo de fútbol local se encuentra entrenando arduamente para el partido de semifinales que se llevará...',	'Rumbo a la gran final',	'imagen6.jpg',	'0', 100);
  PERFORM CREAR_ARTICULO(6, 'Descubren nuevos restos arqueológicos en yacimiento histórico',	'2023-05-16',	'Durante las excavaciones en un yacimiento histórico, se han encontrado nuevos restos que podrían arrojar n...',	'Reescribiendo la historia',	'imagen7.jpg',	'1', 50);
  PERFORM CREAR_ARTICULO(7, 'El presidente anuncia nuevas medidas económicas', '2023-05-22', 'El presidente anunció hoy en conferencia de prensa una serie de medidas económicas para impulsar...',	'Impulso al sector empresarial',	'imagen1.jpg',	'1', 45);
  PERFORM CREAR_ARTICULO(8, 'Tras atroz crimen de disidencias, paz total de Petro enfrenta otro desafío: ¿qué sigue?', '2023-05-22', 'El proyecto de "paz total" del gobierno del presidente Gustavo Petro vive sus horas más críticas luego del crimen perpetrado por el llamado "Estado Mayor Central" de las Farc (Emc-Farc).',	'El Gobierno suspendió parcialmente cese del fuego. ¿Qué significa esta decisión? ¿Qué viene ahora?',	'imagen8.jpg',	'1', 10);
  PERFORM CREAR_ARTICULO(9, 'Gustavo Petro habla sobre trino de niños desaparecidos en Guaviare: "Ni lo escribí"', '2023-05-22', 'El pasado 17 de mayo, el presidente Gustavo Petro anunció por medio de su cuenta en Twitter que los niños desaparecidos tras el accidente de la avioneta en las selvas que conectan a Caquetá con Guaviare habían sido encontrados con vida. Sin embargo, el trino fue eliminado horas después y el mandatario tuvo que excusarse por dar una información errónea al país."He decidido borrar el trino debido a que la información entregada por el ICBF no ha podido ser confirmada. Lamento lo sucedido".',	'El presidente se refirió al trino donde aseguraba que los cuatro niños habían sido encontrados.',	'imagen9.jpg',	'0', 100);
  PERFORM CREAR_ARTICULO(10, '"Nuestra relación de seguridad con Colombia es muy estrecha": Jefa Southcom de EE. UU.', '2023-05-22', 'La jefa del Comando Sur de Estados Unidos, la general Laura Richardson, llegó a Bogotá el domingo para una visita de tres días que incluyó un encuentro con el presidente colombiano, Gustavo Petro.',	'La general Laura Richardson, jefa del Comando Sur, habló con EL TIEMPO de su visita a Colombia.',	'imagen10.jpg',	'1', 67);
  PERFORM CREAR_ARTICULO(11, 'China aprueba la compra de Activision Blizzard por parte de Microsoft', '2023-05-22', 'Microsoft aseguró el viernes pasado que China aprobó "incondicionalmente" su plan para comprar la compañía de videojuegos Activision Blizzard, en momentos en los que el acuerdo aún enfrenta una fuerte oposición antimonopolio en los Estados Unidos y el Reino Unido',	'Un portavoz de Microsoft aseguró que China es el país número 37 que apoya la adquisición.',	'imagen11.jpg',	'0', 32);
  PERFORM CREAR_ARTICULO(12, 'Hallan restos arqueológicos en antigua ciudad romana', '2023-05-22', 'Durante las excavaciones en la antigua ciudad romana de Pompeya,ueólogos descubrieron importantes restos que revelan detalles sobre la vida en la época.', 'Descubrimiento histórico en Pompeya', 'pompeya.jpg', '1', 50);
  PERFORM CREAR_ARTICULO(13, 'Científicos encuentran nueva especie de dinosaurio en Patagonia', '2023-05-21', 'Un equipo de paleontólogos descubrió los restos de un dinosaurio hasta ahora desconocido en la región de la Patagonia. El hallazgo podría proporcionar nuevas pistas sobre la evolución de estas criaturas prehistóricas.', 'Nueva especie de dinosaurio en la Patagonia', 'patagonia.jpg', '0', 32);
  PERFORM CREAR_ARTICULO(14, 'Expertos advierten sobre el aumento de la contaminación en grandes ciudades', '2023-05-20', 'Un informe elaborado por especialistas en medio ambiente alerta sobre el creciente problema de la contaminación en las grandes ciudades. Se destacan los efectos negativos en la salud de los habitantes y la urgencia de tomar medidas para reducir la emisión de contaminantes.', 'Contaminación en las ciudades', 'contaminacion.jpg', '1', 59);
  PERFORM CREAR_ARTICULO(15,'Descubren posible cura para una enfermedad rara', '2023-05-19', 'Investigadores han encontrado indicios prometedores sobre una posible cura para una enfermedad rara que afecta a un pequeño grupo de pacientes. Los resultados de los ensayos clínicos son alentadores.', 'Avances en el tratamiento de enfermedad rara', 'enfermedad_rara.jpg', '0', 0);
  PERFORM CREAR_ARTICULO(16,'Lanzamiento de nuevo satélite para la exploración espacial', '2023-05-18', 'Hoy se llevó a cabo el exitoso lanzamiento de un nuevo satélite destinado a la exploración espacial. El dispositivo cuenta con tecnología de vanguardia y se espera que proporcione datos importantes sobre nuestro universo.', 'Nueva misión espacial', 'satelite.jpg', '0', 21);
  PERFORM CREAR_ARTICULO(17,'Crecimiento económico en país latinoamericano supera expectativas', '2023-05-17', 'Según datos oficiales,crecimiento económico en un país latinoamericano durante el último trimestre ha superado las expectativas. Esto se atribuye a diversas políticas implementadas para impulsar sectores clave de la economía.', 'Éxito económico en Latinoamérica', 'crecimiento_economico.jpg', '1', 0);
  PERFORM CREAR_ARTICULO(18,'Avances en la investigación del cáncer de mama', '2023-05-16', 'Un equipo de científicos ha logrado importantes avances en la investigación del cáncer de mama. Se han identificado nuevas dianas terapéuticas que podrían mejorar los tratamientos actuales y aumentar las tasas de supervivencia.', 'Investigación del cáncer de mama', 'cancer_mama.jpg', '0', 10);
  PERFORM CREAR_ARTICULO(1,'Celebridades participan en evento benéfico para combatir la pobreza', '2023-05-15', 'Importantes figuras del espectáculo se unieron en un evento benéfico para recaudar fondos y combatir la pobreza en diferentes regiones del mundo. El evento fue todo un éxito y logró generar conciencia sobre esta problemática global.', 'Evento benéfico contra la pobreza', 'evento_benefico.jpg', '0', 14);
  PERFORM CREAR_ARTICULO(2,'Nuevo descubrimiento arqueológico revela antigua civilización perdida', '2023-05-14', 'Un equipo de arqueólogos ha encontrado evidencias de una antigua civilización perdida en una remota región. El hallazgo ofrece nuevos conocimientos sobre la historia y la cultura de esta enigmática civilización.', 'Civilización perdida descubierta', 'civilizacion_perdida.jpg', '1', 11);
  PERFORM CREAR_ARTICULO(3,'Avance en la lucha contra el cambio climático', '2023-05-13', 'Un estudio internacional revela que las emisiones de gases de efecto invernadero se han reducido significativamente en los últimos años. Este avance representa un paso importante en la lucha contra el cambio climático y muestra la efectividad de las medidas implementadas.', 'Reducción de emisiones de gases', 'cambio_climatico.jpg', '1', 12);
  PERFORM CREAR_ARTICULO(4,'Descubren nueva especie de planta en selva tropical', '2023-05-12', 'Científicos han encontrado una nueva especie de planta en una selva tropical,cual posee propiedades medicinales prometedoras. Este hallazgo podría tener importantes aplicaciones en el campo de la medicina y la conservación de la biodiversidad.', 'Nueva especie de planta en selva tropical', 'planta_selva.jpg', '0', 1);
  PERFORM CREAR_ARTICULO(5,'Investigación revela vínculos entre el estrés y enfermedades cardiovasculares', '2023-05-11', 'Un estudio científico ha encontrado evidencia de los vínculos entre el estrés crónico y el desarrollo de enfermedades cardiovasculares. Estos hallazgos resaltan la importancia de abordar el estrés como factor de riesgo para la salud del corazón.', 'Estrés y enfermedades cardiovasculares', 'enfermedades_cardiovasculares.jpg', '1', 32);
  PERFORM CREAR_ARTICULO(6,'Descubren nueva especie de insecto en selva amazónica','2023-05-07','Un equipo de biólogos ha descubierto una nueva especie de insecto en la selva amazónica. Este hallazgo demuestra la increíble diversidad biológica que aún queda por explorar.','Nueva especie de insecto en la Amazonía','insecto_amazonia.jpg','1', 21);
  PERFORM CREAR_ARTICULO(7,'Avance en la tecnología de vehículos eléctricos','2023-05-06','Empresas automotrices anuncian un importante avance en la tecnología de vehículos eléctricos. Se espera que estos avances impulsen la adopción masiva de vehículos eléctricos y contribuyan a la reducción de emisiones contaminantes.','Tecnología de vehículos eléctricos','vehiculo_electrico.jpg','0', 43);
  PERFORM CREAR_ARTICULO(8,'Descubren restos fósiles de dinosaurio gigante','2023-05-05','En una expedición arqueológica, se han encontrado restos fósiles de un dinosaurio gigante que habitó la Tierra hace millones de años. Este hallazgo proporciona valiosa información sobre las especies prehistóricas que poblaron nuestro planeta.','Restos fósiles de dinosaurio gigante','dinosaurio_gigante.jpg','1', 21);
  PERFORM CREAR_ARTICULO(9,'Investigadores descubren posible tratamiento para enfermedad neurodegenerativa','2023-05-04','Investigadores han identificado un posible tratamiento para una enfermedad neurodegenerativa que afecta a millones de personas en todo el mundo. Este avance brinda esperanza a los pacientes y a sus familias.','Tratamiento para enfermedad neurodegenerativa','tratamiento_neurodegenerativa.jpg','0', 31);
  PERFORM CREAR_ARTICULO(2,'Nuevo récord de producción de energía solar','2023-05-03','Se ha alcanzado un nuevo récord de producción de energía solar a nivel mundial. Esto demuestra el crecimiento exponencial de la energía renovable y su importancia en la transición hacia un futuro más sostenible.','Récord de producción de energía solar','energia_solar.jpg','1', 51);
  PERFORM CREAR_ARTICULO(4,'Estudio revela efectos positivos de la música en el bienestar mental','2023-05-02','Un estudio científico ha demostrado los efectos positivos de la música en el bienestar mental de las personas. Escuchar música puede ayudar a reducir el estrés, mejorar el estado de ánimo y promover la relajación.','Efectos positivos de la música en el bienestar mental','musica_bienestar.jpg','0', 41);
  PERFORM CREAR_ARTICULO(6,'Descubren antiguo templo en Egipto','2023-05-01','Arqueólogos han descubierto un antiguo templo en Egipto que data de hace miles de años. Este hallazgo proporciona valiosa información sobre la historia y la cultura de la civilización egipcia.','Descubrimiento de antiguo templo en Egipto','templo_egipto.jpg','1', 71);
  PERFORM CREAR_ARTICULO(8,'Desarrollan nueva tecnología de realidad virtual','2023-04-30','Investigadores han desarrollado una nueva tecnología de realidad virtual que permite experiencias más inmersivas y realistas. Esta tecnología tiene aplicaciones en campos como la educación, el entretenimiento y la medicina.','Avances en tecnología de realidad virtual','realidad_virtual.jpg','0', 32);
  PERFORM CREAR_ARTICULO(10,'Científicos descubren nueva especie marina en el océano','2023-04-29','Científicos han descubierto una nueva especie marina en las profundidades del océano. Este descubrimiento amplía nuestro conocimiento sobre la vida marina y destaca la importancia de su conservación.','Descubrimiento de nueva especie marina','especie_marina.jpg','1', 22);
  PERFORM CREAR_ARTICULO(12,'Inauguración de nuevo centro de investigación médica','2023-04-28','Se ha inaugurado un nuevo centro de investigación médica que se enfocará en el estudio y el tratamiento de enfermedades crónicas. Este centro cuenta con tecnología de vanguardia y expertos en diversas disciplinas médicas.','Inauguración de centro de investigación médica','centro_investigacion_medica.jpg','0', 33);
  PERFORM CREAR_ARTICULO(14,'Descubren nuevas propiedades en material nanotecnológico','2023-04-27','Científicos han descubierto nuevas propiedades en un material nanotecnológico que podría tener aplicaciones en campos como la electrónica, la medicina y la energía. Este hallazgo impulsa el desarrollo de tecnologías avanzadas.','Avances en material nanotecnológico','nanotecnologia.jpg','1', 5);
  PERFORM CREAR_ARTICULO(16,'Descubren evidencia de agua líquida en Marte','2023-04-26','Nuevas investigaciones han revelado evidencia de agua líquida en Marte. Este hallazgo aumenta las posibilidades de encontrar signos de vida en el planeta rojo y plantea nuevas preguntas sobre su habitabilidad.','Evidencia de agua líquida en Marte','agua_marte.jpg','0', 21);
  PERFORM CREAR_ARTICULO(18,'Investigadores desarrollan método eficiente para reciclaje de plástico','2023-04-25','Investigadores han desarrollado un método eficiente para el reciclaje de plástico, lo cual contribuye a reducir la contaminación ambiental y promover la economía circular. Este avance es un paso importante hacia la sostenibilidad.','Reciclaje eficiente de plástico','reciclaje_plastico.jpg','1', 6);
  PERFORM CREAR_ARTICULO(5,'Nuevo récord de producción de alimentos orgánicos','2023-04-24','Se ha alcanzado un nuevo récord de producción de alimentos orgánicos a nivel mundial. Esto refleja el creciente interés de los consumidores por una alimentación saludable y respetuosa con el medio ambiente.','Récord de producción de alimentos orgánicos','alimentos_organicos.jpg','0', 12);
  PERFORM CREAR_ARTICULO(7,'Estudio revela beneficios de la actividad física en la salud mental','2023-04-23','Un estudio científico ha demostrado los beneficios de la actividad física regular en la salud mental. Hacer ejercicio no solo mejora la condición física, sino que también contribuye a reducir el riesgo de trastornos mentales y mejorar el bienestar emocional.','Beneficios de la actividad física en la salud mental','actividad_fisica_salud_mental.jpg','1', 66);
  PERFORM CREAR_ARTICULO(3,'Descubren nuevo exoplaneta habitable','2023-04-22','Astrónomos han descubierto un nuevo exoplaneta que se encuentra en la zona habitable de su estrella. Este hallazgo aumenta las posibilidades de encontrar planetas similares a la Tierra y la existencia de vida en otros sistemas estelares.','Descubrimiento de exoplaneta habitable','exoplaneta_habitable.jpg','0', 0);
  PERFORM CREAR_ARTICULO(4,'Nuevas investigaciones sobre el origen de la vida en la Tierra','2023-04-21','Investigadores han realizado nuevas investigaciones sobre el origen de la vida en la Tierra. Estos estudios proporcionan pistas sobre cómo surgieron los primeros organismos y qué condiciones eran necesarias para su desarrollo.','Origen de la vida en la Tierra','origen_vida_tierra.jpg','1');
  PERFORM CREAR_ARTICULO(8,'Nuevo récord de ventas en la industria tecnológica','2023-04-20','La industria tecnológica ha alcanzado un nuevo récord de ventas, impulsado por la demanda de dispositivos electrónicos y servicios digitales. Este crecimiento refleja el papel fundamental de la tecnología en nuestra sociedad.','Récord de ventas en la industria tecnológica','ventas_industria_tecnologica.jpg','0');
  PERFORM CREAR_ARTICULO(17,'Descubren ruinas antiguas en ciudad subterránea','2023-04-19','Arqueólogos han descubierto ruinas antiguas en una ciudad subterránea que data de hace siglos. Este hallazgo ofrece nuevas perspectivas sobre las civilizaciones del pasado y su forma de vida.','Descubrimiento de ruinas antiguas en ciudad subterránea','ruinas_antiguas.jpg','1');
  PERFORM CREAR_ARTICULO(11,'Investigadores desarrollan baterías de larga duración para dispositivos móviles','2023-04-18','Investigadores han desarrollado baterías de larga duración que permiten una mayor autonomía en los dispositivos móviles. Este avance tecnológico mejora la experiencia de los usuarios y reduce la necesidad de cargar los dispositivos con frecuencia.','Baterías de larga duración para dispositivos móviles','baterias_larga_duracion.jpg','0');
  PERFORM CREAR_ARTICULO(13,'Avances en el tratamiento del cáncer de mama','2023-04-17','Científicos han logrado importantes avances en el tratamiento del cáncer de mama, incluyendo terapias más efectivas y menos invasivas. Estos avances brindan esperanza a los pacientes y contribuyen a mejorar la tasa de supervivencia.','Tratamiento del cáncer de mama','tratamiento_cancer_mama.jpg','1');
  PERFORM CREAR_ARTICULO(7,'Desarrollan nuevo método de desalinización de agua','2023-04-16','Investigadores han desarrollado un nuevo método de desalinización de agua que es más eficiente y sostenible que los métodos convencionales. Este avance tiene el potencial de abordar la escasez de agua potable en muchas regiones del mundo.','Desalinización de agua','desalinizacion_agua.jpg','0');
  PERFORM CREAR_ARTICULO(11,'Descubren nuevo tipo de partícula subatómica','2023-04-15','Científicos han descubierto un nuevo tipo de partícula subatómica en experimentos de física de partículas. Este descubrimiento amplía nuestro conocimiento sobre la estructura fundamental de la materia.','Descubrimiento de nuevo tipo de partícula subatómica','particula_subatomica.jpg','1');
  PERFORM CREAR_ARTICULO(5,'Estudio revela impacto negativo de la contaminación del aire en la salud','2023-04-14','Un estudio científico ha revelado el impacto negativo de la contaminación del aire en la salud humana. La exposición prolongada a altos niveles de contaminantes atmosféricos está asociada con enfermedades respiratorias y cardiovasculares.','Impacto de la contaminación del aire en la salud','contaminacion_aire.jpg','0');
  PERFORM CREAR_ARTICULO(3,'Investigadores descubren nueva especie de planta en selva tropical','2023-04-13','Investigadores han descubierto una nueva especie de planta en la selva tropical. Este hallazgo resalta la importancia de la conservación de los ecosistemas y la biodiversidad.','Nueva especie de planta en la selva tropical','planta_selva_tropical.jpg','1');
  PERFORM CREAR_ARTICULO(1,'Descubren nuevo fármaco para el tratamiento del Alzheimer','2023-04-12','Científicos han descubierto un nuevo fármaco prometedor para el tratamiento del Alzheimer. Esta enfermedad neurodegenerativa afecta a millones de personas en todo el mundo y hasta ahora no se ha encontrado una cura definitiva.','Descubrimiento de nuevo fármaco para el Alzheimer','nuevo_farmaco_alzheimer.jpg','0');
  PERFORM CREAR_ARTICULO(2,'Nuevas evidencias de la existencia de agua en la Luna','2023-04-11','Nuevas evidencias científicas respaldan la existencia de agua en la Luna. Este descubrimiento tiene implicaciones importantes para futuras misiones espaciales y la exploración lunar.','Evidencias de agua en la Luna','agua_luna.jpg','1');
  PERFORM CREAR_ARTICULO(3,'Investigadores descubren nuevas especies en el fondo marino','2023-04-10','Científicos han descubierto nuevas especies en las profundidades del fondo marino. Estos hallazgos revelan la biodiversidad oculta en los océanos y la importancia de su conservación.','Descubrimiento de nuevas especies en el fondo marino','nuevas_especies_fondo_marino.jpg','0');
  PERFORM CREAR_ARTICULO(4,'Avances en la tecnología de vehículos eléctricos','2023-04-09','Se han logrado importantes avances en la tecnología de vehículos eléctricos, incluyendo mejoras en la autonomía de las baterías y la infraestructura de carga. Estos avances aceleran la transición hacia la movilidad sostenible.','Avances en tecnología de vehículos eléctricos','tecnologia_vehiculos_electricos.jpg','1');
  PERFORM CREAR_ARTICULO(5,'Estudio revela impacto positivo de la meditación en la salud','2023-04-08','Un estudio científico ha revelado el impacto positivo de la meditación en la salud física y mental. La práctica regular de la meditación se asocia con beneficios como la reducción del estrés, el mejoramiento del enfoque y la promoción del bienestar emocional.','Impacto de la meditación en la salud','meditacion_salud.jpg','0');
  PERFORM CREAR_ARTICULO(6,'Desarrollan nuevas técnicas de impresión 3D','2023-04-07','Investigadores han desarrollado nuevas técnicas de impresión 3D que permiten la creación de estructuras más complejas y funcionales. Estas innovaciones tienen aplicaciones en sectores como la medicina, la arquitectura y la industria.','Avances en técnicas de impresión 3D','impresion_3d.jpg','1');
  PERFORM CREAR_ARTICULO(7,'Descubren nuevo planeta en el sistema solar','2023-04-06','Astrónomos han descubierto un nuevo planeta en el sistema solar en los límites más distantes. Este hallazgo amplía nuestro conocimiento sobre nuestra vecindad cósmica y plantea nuevas preguntas sobre la formación de planetas.','Descubrimiento de nuevo planeta en el sistema solar','nuevo_planeta_sistema_solar.jpg','0');
  PERFORM CREAR_ARTICULO(8,'Investigadores desarrollan tecnología para la detección temprana de enfermedades','2023-04-05','Investigadores han desarrollado tecnologías avanzadas para la detección temprana de enfermedades, lo cual permite un diagnóstico más preciso y oportuno. Estos avances mejoran la atención médica y salvan vidas.','Detección temprana de enfermedades','deteccion_temprana_enfermedades.jpg','1');
  PERFORM CREAR_ARTICULO(9,'Nuevas evidencias sobre el impacto del cambio climático en los océanos','2023-04-04','Nuevas evidencias científicas respaldan el impacto del cambio climático en los océanos, incluyendo el aumento de las temperaturas, la acidificación y la pérdida de biodiversidad marina. Estos hallazgos resaltan la urgencia de tomar medidas para combatir el cambio climático.','Impacto del cambio climático en los océanos','cambio_climatico_oceanos.jpg','0');
  PERFORM CREAR_ARTICULO(10,'Investigadores descubren nuevo método para combatir bacterias resistentes a antibióticos','2023-04-03','Científicos han descubierto un nuevo método prometedor para combatir bacterias resistentes a los antibióticos. Esta amenaza creciente para la salud pública requiere soluciones innovadoras.','Método para combatir bacterias resistentes a antibióticos','bacterias_resistentes_antibioticos.jpg','1');
  PERFORM CREAR_ARTICULO(11,'Estudio demuestra beneficios de la música en el bienestar emocional','2023-04-02','Un estudio científico ha demostrado los beneficios de la música en el bienestar emocional. Escuchar música puede tener efectos positivos en el estado de ánimo, reducir el estrés y promover la relajación.','Beneficios de la música en el bienestar emocional','musica_bienestar_emocional.jpg','0');
  PERFORM CREAR_ARTICULO(12,'Desarrollan nuevo método de almacenamiento de energía','2023-04-01','Investigadores han desarrollado un nuevo método de almacenamiento de energía que utiliza materiales más seguros y eficientes. Esta innovación tiene el potencial de impulsar la transición hacia fuentes de energía renovable.','Nuevo método de almacenamiento de energía','almacenamiento_energia.jpg','1');
  PERFORM CREAR_ARTICULO(13,'Descubren nueva especie de dinosaurio en Argentina','2023-03-31','Paleontólogos han descubierto una nueva especie de dinosaurio en Argentina. Este hallazgo proporciona información valiosa sobre la diversidad de los dinosaurios y su evolución.','Nueva especie de dinosaurio en Argentina','especie_dinosaurio_argentina.jpg','0');
  PERFORM CREAR_ARTICULO(14,'Investigadores logran avances en la inteligencia artificial aplicada a la medicina','2023-03-30','Investigadores han logrado avances significativos en la aplicación de la inteligencia artificial a la medicina. Estas herramientas pueden ayudar en el diagnóstico de enfermedades, el desarrollo de tratamientos personalizados y la gestión de datos clínicos.','Avances en inteligencia artificial aplicada a la medicina','inteligencia_artificial_medicina.jpg','1');
  PERFORM CREAR_ARTICULO(15,'Desarrollan nuevos materiales para dispositivos electrónicos flexibles','2023-03-29','Científicos han desarrollado nuevos materiales para dispositivos electrónicos flexibles, como pantallas y sensores. Estos avances permiten la creación de dispositivos más ligeros, delgados y adaptables.','Avances en materiales para dispositivos electrónicos flexibles','materiales_dispositivos_flexibles.jpg','0');
  PERFORM CREAR_ARTICULO(16,'Descubren nuevas propiedades en materiales superconductores','2023-03-28','Investigadores han descubierto nuevas propiedades en materiales superconductores, que pueden conducir a avances en la eficiencia energética y la tecnología de almacenamiento de energía. Estos materiales tienen la capacidad de transmitir corriente eléctrica sin resistencia.','Nuevas propiedades en materiales superconductores','materiales_superconductores.jpg','1');
  PERFORM CREAR_ARTICULO(17,'Estudio demuestra los beneficios de la terapia cognitivo-conductual en la salud mental','2023-03-27','Un estudio científico ha demostrado los beneficios de la terapia cognitivo-conductual en el tratamiento de trastornos mentales como la ansiedad y la depresión. Esta forma de terapia ha demostrado ser eficaz en el manejo de los síntomas y la mejora del bienestar mental.','Beneficios de la terapia cognitivo-conductual en la salud mental','terapia_cognitivo_conductual.jpg','0');
  PERFORM CREAR_ARTICULO(18,'Investigadores desarrollan tecnología para la detección temprana de enfermedades cardíacas','2023-03-26','Investigadores han desarrollado tecnología avanzada para la detección temprana de enfermedades cardíacas, incluyendo dispositivos portátiles y algoritmos de análisis de datos. Esta innovación permite una detección temprana y un tratamiento más efectivo de las enfermedades cardiovasculares.','Detección temprana de enfermedades cardíacas','deteccion_temprana_enfermedades_cardiacas.jpg','1');
  PERFORM CREAR_ARTICULO(5,'Descubren nueva especie de árbol en la selva amazónica','2023-03-25','Científicos han descubierto una nueva especie de árbol en la selva amazónica. Esta especie única resalta la importancia de proteger y conservar los bosques tropicales.','Nueva especie de árbol en la selva amazónica','especie_arbol_selva_amazonica.jpg','0');
  PERFORM CREAR_ARTICULO(13,'Investigadores logran avances en la energía solar','2023-03-24','Investigadores han logrado importantes avances en la tecnología de energía solar, incluyendo la eficiencia de las células solares y el desarrollo de sistemas de almacenamiento. Estos avances impulsan la transición hacia fuentes de energía renovable.','Avances en tecnología de energía solar','avances_energia_solar.jpg','1');
  PERFORM CREAR_ARTICULO(14,'Estudio revela relación entre la dieta y la salud intestinal','2023-03-23','Un estudio científico ha revelado la relación entre la dieta y la salud intestinal. Una alimentación equilibrada y rica en fibra puede promover una microbiota intestinal saludable y prevenir enfermedades relacionadas con el intestino.','Relación entre la dieta y la salud intestinal','dieta_salud_intestinal.jpg','0');
  PERFORM CREAR_ARTICULO(15,'Desarrollan nuevos métodos de descontaminación del agua','2023-03-22','Científicos han desarrollado nuevos métodos de descontaminación del agua, utilizando tecnologías como la filtración avanzada y la fotocatálisis. Estos avances tienen el potencial de mejorar el acceso a agua potable segura en áreas afectadas por la contaminación.','Nuevos métodos de descontaminación del agua','descontaminacion_agua.jpg','1');
  PERFORM CREAR_ARTICULO(16,'Investigadores descubren nuevos exoplanetas habitables','2023-03-21','Investigadores han descubierto nuevos exoplanetas que podrían albergar condiciones habitables para la vida. Estos hallazgos amplían nuestra comprensión sobre la diversidad de planetas en el universo y la posibilidad de encontrar vida más allá de la Tierra.','Descubrimiento de nuevos exoplanetas habitables','exoplanetas_habitables.jpg','0');
  PERFORM CREAR_ARTICULO(17,'Avances en la tecnología de realidad virtual','2023-03-20','Se han logrado avances significativos en la tecnología de realidad virtual, incluyendo mejoras en la resolución de los dispositivos y la creación de experiencias más inmersivas. Estas innovaciones tienen aplicaciones en sectores como el entretenimiento, la educación y la medicina.','Avances en tecnología de realidad virtual','tecnologia_realidad_virtual.jpg','1');
  PERFORM CREAR_ARTICULO(1,'Estudio demuestra los beneficios de la actividad física en la salud','2023-03-19','Un estudio científico ha demostrado los beneficios de la actividad física regular en la salud. La práctica de ejercicio físico está asociada con la prevención de enfermedades crónicas, la mejora del estado de ánimo y el aumento de la esperanza de vida.','Beneficios de la actividad física en la salud','actividad_fisica_salud.jpg','0');
  PERFORM CREAR_ARTICULO(3,'Desarrollan nuevos materiales para paneles solares','2023-03-18','Científicos han desarrollado nuevos materiales para paneles solares que mejoran la eficiencia y reducen los costos de producción. Estos avances contribuyen a hacer la energía solar más accesible y viable a gran escala.','Avances en materiales para paneles solares','materiales_paneles_solares.jpg','1');
  PERFORM CREAR_ARTICULO(5,'Investigadores descubren nueva especie de planta en la selva africana','2023-03-17','Investigadores han descubierto una nueva especie de planta en la selva africana. Este descubrimiento destaca la importancia de la biodiversidad y la conservación de los ecosistemas.','Nueva especie de planta en la selva africana','especie_planta_selva_africana.jpg','0');
  PERFORM CREAR_ARTICULO(7,'Estudio demuestra beneficios de la terapia génica en el tratamiento de enfermedades genéticas','2023-03-16','Un estudio científico ha demostrado los beneficios de la terapia génica en el tratamiento de enfermedades genéticas. Esta técnica innovadora tiene el potencial de corregir mutaciones genéticas y mejorar la calidad de vida de los pacientes.','Beneficios de la terapia génica en el tratamiento de enfermedades genéticas','terapia_genica_enfermedades_geneticas.jpg','1');

  RAISE NOTICE 'Se han agregado los articulos existosamente';

END $$ LANGUAGE plpgsql;