/*
	Autor: Luis Correal Viveros
	Fecha: 03/13/2021
	Descripcion: Script para la creacion de sinonimos desde el usuario AIRBNB2 
				de todas las tablas del usuario AIRBNB
*/

CREATE SYNONYM Place
FOR AIRBNB.place;

CREATE SYNONYM Review
FOR AIRBNB.review;

CREATE SYNONYM UserAirbnb
FOR AIRBNB.userairbnb;

CREATE SYNONYM Amenity
FOR AIRBNB.amenity;

CREATE SYNONYM PlaceAmenity
FOR AIRBNB.placeamenity;

CREATE SYNONYM StateAirbnb
FOR AIRBNB.stateairbnb;

CREATE SYNONYM City
FOR AIRBNB.city;

CREATE SYNONYM Review_User_Place
FOR AIRBNB.review_user_place;

CREATE SYNONYM Place_City_State
FOR AIRBNB.place_city_state;

CREATE SYNONYM Place_Amenity
FOR AIRBNB.place_amenity;