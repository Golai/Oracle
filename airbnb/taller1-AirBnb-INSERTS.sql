/*
Script encargado de pruebas para entrada de valores
autor: Luis Correal Viveros
*/

INSERT INTO UserAirBnb 
            VALUES(
                    '1',
                    '03-05-2020' ,
                    '03-05-2021' ,
                    'lucho@g.co',
                    '123456',
                    'luis',
                    'correal');

INSERT INTO Amenity 
            VALUES(
                    '1',
                    '03-05-2021',
                    '03-05-2021',
                    'TRANQUILO');

INSERT INTO StateAirBnb 
            VALUES(
                    'VA',
                    '03-05-2021',
                    '03-05-2021',
                    'valle del cauca');

INSERT INTO CITY 
            VALUES(
                    '1TU',
                    '03-05-2021',
                    '03-05-2021',
                    'VA',
                    'TULUA');

INSERT INTO Place(
                    id,
                    updated_at,
                    created_at,
                    user_id,
                    name,
                    city_id,
                    latitude,
                    longitude) 
            VALUES(
                    '1a',
                    '03-05-2021',
                    '03-05-2021',
                    '1',
                    'casaLuis',
                    '1TU',
                    4.083726,
                    -76.18654);

INSERT INTO placeamenity 
            VALUES(
                    '1',
                    '1a');

INSERT INTO review 
            VALUES(
                    'RE1',
                    '03-05-2021',
                    '03-05-2021',
                    '1',
                    '1a',
                    'el mejor alumno el que tuvo mil problemas');

/* segunda insersion */

INSERT INTO UserAirBnb 
            VALUES(
                    '2',
                    '03-05-2020',
                    '03-05-2021',
                    'pedro@gmail.co',
                    '123456',
                    'pedro',
                    'cusho');

INSERT INTO Amenity 
            VALUES(
                    '2',
                    '03-05-2021',
                    '03-05-2021',
                    'AGRADABLE');

INSERT INTO StateAirBnb 
            VALUES(
                    'AN',
                    '03-05-2021',
                    '03-05-2021',
                    'Antioquia');

INSERT INTO CITY 
            VALUES(
                    '1ANT',
                    '03-05-2021',
                    '03-05-2021',
                    'AN',
                    'Medellin');

INSERT INTO Place(
                    id,
                    updated_at,
                    created_at,
                    user_id,
                    name,
                    city_id,
                    number_rooms,
                    number_bathrooms,
                    price_by_night,
                    latitude,
                    longitude) 
            VALUES(
                    '1MeA',
                    '03-05-2021',
                    '03-05-2021',
                    '1',
                    'aptoPedro',
                    '1ANT',
                    2,
                    1,
                    10,
                    6.217087,
                    -75.567995);

INSERT INTO placeamenity 
            VALUES(
            '2',
            '1MeA');

INSERT INTO review 
            VALUES(
            'RE2',
            '03-05-2021',
            '03-05-2021',
            '2',
            '1MeA',
            'apto tranquilo');


SELECT * FROM UserAirBnb;

SELECT * FROM Amenity;

SELECT * FROM StateAirBnb;

SELECT * FROM CITY;

SELECT * FROM Place;

SELECT * FROM placeamenity;

SELECT * FROM review;