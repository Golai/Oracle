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
    
CREATE TABLE Review (
    id                  VARCHAR2(100) NOT NULL,
    updated_at          DATE NOT NULL,
    created_at          DATE NOT NULL,
    user_id             VARCHAR2(100),
    place_id            VARCHAR2(100),
    text                VARCHAR2(250)
    );

CREATE TABLE UserAirBnb (
    id                  VARCHAR2(100) NOT NULL,
    updated_at          DATE NOT NULL,
    created_at          DATE NOT NULL,
    email               VARCHAR2(50) NOT NULL,
    password            VARCHAR2(250) NOT NULL,
    first_name          VARCHAR2(25),
    last_name           VARCHAR2(25)
    );
    
CREATE TABLE Amenity (
    id                  VARCHAR2(100) NOT NULL,
    updated_at          DATE NOT NULL,
    created_at          DATE NOT NULL,
    name                VARCHAR2(25)
    );

CREATE TABLE PlaceAmenity (
    amenity_id          VARCHAR2(100),
    place_id            VARCHAR2(100)
    );
    
CREATE TABLE StateAirBnb (
    id                  VARCHAR2(100) NOT NULL,
    updated_at          DATE NOT NULL,
    created_at          DATE NOT NULL,
    name                VARCHAR2(25)
    );
    
CREATE TABLE City (
    id                  VARCHAR2(100) NOT NULL,
    updated_at          DATE NOT NULL,
    created_at          DATE NOT NULL,
    state_id            VARCHAR2(100),
    name                VARCHAR2(25)
    );

ALTER TABLE StateAirBnb 
MODIFY                 (id CONSTRAINT StateAriBnb_id_pk PRIMARY KEY);

ALTER TABLE Amenity 
MODIFY                 (id CONSTRAINT Amenity_id_pk PRIMARY KEY);

ALTER TABLE City 
MODIFY                  (id CONSTRAINT City_id_pk PRIMARY KEY);

ALTER TABLE Place 
MODIFY                  (id CONSTRAINT Place_id_pk PRIMARY KEY);

ALTER TABLE Review 
MODIFY                  (id CONSTRAINT Review_id_pk PRIMARY KEY);

ALTER TABLE UserAirBnb 
MODIFY                  (id CONSTRAINT UserAirBnb_id_pk PRIMARY KEY);

ALTER TABLE PlaceAmenity
ADD     CONSTRAINT PA_Ame_id
        FOREIGN KEY (amenity_id)
        REFERENCES Amenity(id); 

ALTER TABLE PlaceAmenity
ADD                     (
                            CONSTRAINT PA_Ame_id_fk
                                FOREIGN KEY (amenity_id)
                                REFERENCES Amenity(id),
                            CONSTRAINT PA_Place_id_fk
                                FOREIGN KEY (place_id)
                                REFERENCES Place(id)
                        );
        
ALTER TABLE City
ADD     CONSTRAINT city_State_id_fk
            FOREIGN KEY (state_id)
            REFERENCES StateAirBnb(id);
            
ALTER TABLE Place
ADD     (
            CONSTRAINT Place_user_id_fk
                FOREIGN KEY (user_id)
                REFERENCES UserAirBnb(id),
            CONSTRAINT Place_city_id_fk
                FOREIGN KEY (city_id)
                REFERENCES City(id)
        );
        
ALTER TABLE Review
ADD     (
            CONSTRAINT Review_user_id_fk
                FOREIGN KEY (user_id)
                REFERENCES UserAirBnb(id),
            CONSTRAINT Review_place_id_fk
                FOREIGN KEY (place_id)
                REFERENCES Place(id)
        );

ALTER TABLE Place
MODIFY                  (
                            number_rooms number(3) DEFAULT 0 NOT NULL,
                            number_bathrooms number(3) DEFAULT 0 NOT NULL,
                            max_guest number(3) DEFAULT 0 NOT NULL,
                            price_by_night number(3) DEFAULT 0 NOT NULL
                        );
                         
