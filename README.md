# Clon de la base de datos del tiempo

## Setup

1. Crear una base de datos en postgresql

```sql
CREATE DATABASE ElTiempoDB;
```

2. Conectarse a la base de datos

```sql
\c eltiempodb;
```

3. Ejecutar las instrucciones de los archivos: [data.sql](data.sql), [functions.sql](functions.sql), [procedures.sql](procedures.sql) y [schema.sql](schema.sql). No importa el orden

4. Crear las tablas
```sql
CALL CREATE_MODEL();
```

5. Agrega los datos de prueba
```sql
CALL POPULATE_MODEL();
```

## Extra

* Se puede eliminar todas las tablas de la base datos con el procedimiento:

```sql
CALL DROP_MODEL();
```

* Se puede restaurar la base de datos como quedaria luego hacer los pasos del setup con:

```sql
CALL RESET_DB();
```