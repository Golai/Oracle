# INSTRUCCIONES PARA LA INSTALACION DE ESTE MODELO

# NOTA: cuando se hable de creacion de usuarios se debe ejecutar desde la sesion del administrador en el caso del curso desde la sesion XE

# DESCRIPCION DE LAS CARPETAS:
- assets: SE ENCUENTRASN LOS SCRIPTS PARA LAS VISTAS Y SINONIMOS
- data: SCRIPTS DE INSERSION PARA PROBAR
- tables: SE ENCUENTRA LOS SCRIPTS ENCARGADOS DE LA CREACION Y ALTERACION DE LAS TABLAS
- users: SCRIPTS ENCARGADOS DE LA CREACION Y ASIGNACION DE PRIVILEGIOS DE DIFERENTES USUARIOS
- modelBD: SE ENCUENTRA ILUSTRACION DEL MODELO DE LA BASE DE DATOS PARA ESTE PROYECTO (creditos: https://github.com/gogomillan) 
 

# PARA LA CREACION DE LA BASE DE DATOS Y SUS PRUEBAS

- PRIMERO SE DEBE EJECUTAR EL SCRIPT: 'CreateUserAirBnb.sql' que se encuentra en la carpeta users
- LUEGO SE PASA A LA CREACION DE LAS TABLAS PARA LA BASE DE DATOS AIRBNB
- SE EJECUTA LA EL SCRIPT: 'CreateTablesAirbnb.sql' QUE SE ENCUENTRA EN LA CARPETA tables
- A CONTINUACION EJECUTAREMOS EL SCRIPT 'AlterTableAirbnb.sql' EN LA MISMA TABLA DEL PASO ANTERIOR
- SI TODO A SALIDO CORRECTO SE RECOMIENDA EJECUTAR EL ESCRIPT: 'InsertPruebaAirbnb.sql' QUE SE ENCUENTRA EN LA CARPETA 'data' PARA ASEGURAR QUE LA CREACION DE TABLAS Y SUS ALTERACIONES SEAN CORRECTAS Y FUNCIONE APROPIADAMENTE

# PARA LA CREACION DE VISTAS
- LA CREACION DE VISTAS SE DEBE HACER DESDE LA SESSION DEL USUARIO AIRBNB, SE DEBE DIRIGIR A LA CARPETA: 'assets' Y EJECUTAR TODOS LOS SCRIPTS CON EL PREFIJO: 'vw' UN EJEMPLO: 'vw_reviews.sq'


# PARA LA CREACION DE SINONIMOS
- SE DEBE EJECUTAR EL SCRIPT:'CreateUserAirBnb2.sql' QUE SE ENCUENTRA EN LA CARPETA users PARA LA CREACION DE UN NUEVO USUARIO
- LUEGO DEBE OTORGAR PRIVILEGIOS AL USUARIO 'AIRBNB2' DESDE EL USUARIO: 'AIRBNB' (EL PRIMER USUARIO QUE CREAMOS) PARA ESTO EJECUTAREMOS DESDE LA SESION DE AIRBNB EL SCRIPT: 'airbnb2_privilegios.sql'
- PARA TERMINAR EL PROCESO DESDE LA SESION DE AIRBNB2 SE CREA UN SINONIMO PARA ACCEDER A LAS TABLAS Y VISTAS  DE AIRBNB DESDES AIRBNB2 PARA ESTO SE EJECUTA EL SCRIPT: 'SYNM_Airbnb.sql'


