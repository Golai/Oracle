/* 
    Autor: Luis Correal
    Fecha: 03/13/2021
    Descripcion: script para la creacion de vista de Place y su Amenity 
*/
CREATE OR REPLACE VIEW Place_Amenity
            (id_place, place, id_amenity, Amenity)
AS 
    SELECT      p.id, p.name, a.id, a.name   
    FROM        PlaceAmenity pa,Place p, Amenity a
    WHERE       pa.amenity_id = a.id AND pa.place_id = p.id;


SELECT *
FROM Place_Amenity;