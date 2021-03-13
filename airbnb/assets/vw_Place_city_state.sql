/* 
    Autor: Luis Correal
    Fecha: 03/13/2021
    Descripcion: script para la creacion de vista de Place en City y en State 
*/
CREATE OR REPLACE VIEW Place_City_State
            (id_place, place, id_city, city, id_state, StateAirbnb)
AS 
    SELECT      p.id, p.name, c.id, c.name, s.id, s.name     
    FROM        Place p, city c, stateairbnb s  
    WHERE       p.city_id = c.id AND c.state_id = s.id;


SELECT *
FROM Place_City_State;
