/*
Script para crear un usuario AIRBNB con password por defecto 123456
si se requiere se debe cambiar el password

autor: Luis Correal Viveros

*/

CREATE user airbnb
IDENTIFIED BY 123456;

CREATE ROLE manager;

GRANT CREATE SESSION
TO airbnb;

GRANT CREATE TABLE
TO airbnb;

grant CONNECT, RESOURCE to AIRBNB;

GRANT UNLIMITED TABLESPACE TO AIRBNB;

ALTER USER AIRBNB quota unlimited on UserAirBnb;