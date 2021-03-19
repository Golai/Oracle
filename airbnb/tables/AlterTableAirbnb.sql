ALTER TABLE StateAirBnb 
MODIFY                 (id CONSTRAINT StateAriBnb_id_pk PRIMARY KEY);

ALTER TABLE Amenity 
MODIFY                 (id CONSTRAINT Amenity_id_pk PRIMARY KEY);
/*
Script encargado de los alter table 
ADVERTENCIA: solo usar en caso de que la creacion de tablas sea exitosa
autor: Luis Correal Viveros
*/

/*
ALTER TABLE de la tabla city con llave primaria en el campo id
*/

ALTER TABLE City 
MODIFY                  (id CONSTRAINT City_id_pk PRIMARY KEY);

/*
ALTER TABLE de la tabla Place con llave primaria en el campo id
*/

ALTER TABLE Place 
MODIFY                  (id CONSTRAINT Place_id_pk PRIMARY KEY);

/*
ALTER TABLE de la tabla Review con llave primaria en el campo id
*/

ALTER TABLE Review 
MODIFY                  (id CONSTRAINT Review_id_pk PRIMARY KEY);

/*
ALTER TABLE de la tabla UserAirBnb con llave primaria en el campo id
*/

ALTER TABLE UserAirBnb 
MODIFY                  (id CONSTRAINT UserAirBnb_id_pk PRIMARY KEY);

/*
ALTER TABLE de la tabla PlaceAmenity con llaves foraneas 
en el campo amenity_id apuntando a la tabla amenity en el campo id y
en el campo place_id apuntando a la tabla Place en el campo id
*/

ALTER TABLE PlaceAmenity
ADD                     (
                            CONSTRAINT PA_Ame_id_fk
                                FOREIGN KEY (amenity_id)
                                REFERENCES Amenity(id),
                            CONSTRAINT PA_Place_id_fk
                                FOREIGN KEY (place_id)
                                REFERENCES Place(id)
                        );

/*
ALTER TABLE de la tabla city con llave foranea en el campo state_id 
apuntando a la tabla StateAirBnb en el campo id
*/
        
ALTER TABLE City
ADD     CONSTRAINT city_State_id_fk
            FOREIGN KEY (state_id)
            REFERENCES StateAirBnb(id);

/*
ALTER TABLE de la tabla Place con llaves foraneas 
en el campo User_id apuntando a la tabla UserAirBnb en el campo id y
en el campo city_id apuntando a la tabla City en el campo id
*/
            
ALTER TABLE Place
ADD     (
            CONSTRAINT Place_user_id_fk
                FOREIGN KEY (user_id)
                REFERENCES UserAirBnb(id),
            CONSTRAINT Place_city_id_fk
                FOREIGN KEY (city_id)
                REFERENCES City(id)
        );

/*
ALTER TABLE de la tabla Review con llaves foraneas 
en el campo User_id apuntando a la tabla UserAirBnb en el campo id y
en el campo place_id apuntando a la tabla Place en el campo id
*/
        
ALTER TABLE Review
ADD     (
            CONSTRAINT Review_user_id_fk
                FOREIGN KEY (user_id)
                REFERENCES UserAirBnb(id),
            CONSTRAINT Review_place_id_fk
                FOREIGN KEY (place_id)
                REFERENCES Place(id)
        );

/*
ALTER TABLE de la tabla Place agregando valores por defecto en los campos:
number_rooms
number_bathrooms
max_guest
price_by_night
*/

ALTER TABLE Place
MODIFY                  (
                            number_rooms number(3) DEFAULT 0 NOT NULL,
                            number_bathrooms number(3) DEFAULT 0 NOT NULL,
                            max_guest number(3) DEFAULT 0 NOT NULL,
                            price_by_night number(3) DEFAULT 0 NOT NULL
                        );