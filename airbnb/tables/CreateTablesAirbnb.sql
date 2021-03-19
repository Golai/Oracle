/*
	Autor: Luis Correal Viveros
	Fecha: 03/12/2021
	Descripcion: SCRIPT encargado de crear las tablas de la base de datos AIRBNB 
*/

/*
tabla Place en la que se guardara los lugares
*/

CREATE TABLE Place(
    id                  VARCHAR2(100) NOT NULL,
    updated_at          DATE NOT NULL,
    created_at          DATE NOT NULL,
    user_id             VARCHAR2(100),
    name                VARCHAR2(25),
    city_id             VARCHAR2(100),
    description         VARCHAR2(250),
    number_rooms        NUMBER(3),
    number_bathrooms    NUMBER(3),
    max_guest           NUMBER(3),
    price_by_night      NUMBER(10),
    latitude            NUMBER(13,10),
    longitude           NUMBER(13,10)
    );
   
/*
tabla Review para hacer reseña
*/

CREATE TABLE Review (
    id                  VARCHAR2(100) NOT NULL,
    updated_at          DATE NOT NULL,
    created_at          DATE NOT NULL,
    user_id             VARCHAR2(100),
    place_id            VARCHAR2(100),
    text                VARCHAR2(250)
    );

/*
tabla UserAirBnb para los usuarios de la aplicacion
*/

CREATE TABLE UserAirBnb (
    id                  VARCHAR2(100) NOT NULL,
    updated_at          DATE NOT NULL,
    created_at          DATE NOT NULL,
    email               VARCHAR2(50) NOT NULL,
    password            VARCHAR2(250) NOT NULL,
    first_name          VARCHAR2(25),
    last_name           VARCHAR2(25)
    );

/*
tabla Amenity para describir las ventajas de un lugar en especifico
*/
    
CREATE TABLE Amenity (
    id                  VARCHAR2(100) NOT NULL,
    updated_at          DATE NOT NULL,
    created_at          DATE NOT NULL,
    name                VARCHAR2(25)
    );

/*
tabla PlaceAmenity para dar contexto del lugar y las ventajas, ya que un 
lugar puede tener muchas ventajas y una ventaja puede tener muchos usuarios
*/

CREATE TABLE PlaceAmenity (
    amenity_id          VARCHAR2(100),
    place_id            VARCHAR2(100)
    );

/*
tabla StateAirBnb para guardar el estado de ubicacion
*/
    
CREATE TABLE StateAirBnb (
    id                  VARCHAR2(100) NOT NULL,
    updated_at          DATE NOT NULL,
    created_at          DATE NOT NULL,
    name                VARCHAR2(25)
    );

/*
tabla City para la ciudad de ubicacion
*/
    
CREATE TABLE City (
    id                  VARCHAR2(100) NOT NULL,
    updated_at          DATE NOT NULL,
    created_at          DATE NOT NULL,
    state_id            VARCHAR2(100),
    name                VARCHAR2(25)
    );

/*
los alter table seran encontrados en el siguiente Script (AlterTableAirbnbTaller1.sql)
*/
                         
