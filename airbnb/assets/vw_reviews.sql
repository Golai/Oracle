/* 
    Autor: Luis Correal
    Fecha: 03/13/2021
    Descripcion: script para la creacion de vista de Reviews realizadas por 
                usuarios sobre un Place
*/
CREATE OR REPLACE VIEW Review_User_Place
            (id_place,Place, id_user, UserAirbnb_Name, id_review, Review)
AS 
	SELECT   p.id, p.name, u.id, u.first_name || ' ' || u.last_name, r.id, r.text     
	FROM        Review r, Place p, UserAirBnb u
	WHERE       r.user_id = u.id AND r.place_id =p.id;


SELECT *
FROM Review_User_Place;