/*
	Autor: Luis Correal Viveros
	Fecha: 03/13/2021
	Descripcion: Script que se debe realizar desde el usuario AIRBNB
				para darle privilegios sobre las tablas para realizar
				los sinonimos
*/

GRANT SELECT
ON  Place
TO  AIRBNB2;

GRANT SELECT
ON  Review
TO  AIRBNB2;

GRANT SELECT
ON  UserAirBnb
TO  AIRBNB2;

GRANT SELECT
ON  Amenity
TO  AIRBNB2;

GRANT SELECT
ON  PlaceAmenity
TO  AIRBNB2;

GRANT SELECT
ON  StateAirBnb
TO  AIRBNB2;

GRANT SELECT
ON  City
TO  AIRBNB2;

GRANT SELECT
ON  Review_User_Place
TO  AIRBNB2;

GRANT SELECT
ON  Place_City_State
TO  AIRBNB2;

GRANT SELECT
ON  Place_Amenity
TO  AIRBNB2;