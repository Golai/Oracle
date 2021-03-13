/*
    Autor: Luis Correal Viveros
    Fecha: 03/13/2021
    Descipcion: Script para crear un usuario AIRBNB2 con password por defecto 
                123456 si se requiere se debe cambiar el password
*/

CREATE user airbnb2
IDENTIFIED BY 123456;

GRANT CREATE SESSION
TO airbnb2;

GRANT CREATE SYNONYM
TO airbnb2;

GRANT UNLIMITED TABLESPACE TO AIRBNB2;