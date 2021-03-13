CREATE user airbnb
IDENTIFIED BY 123456;

CREATE ROLE manager;

GRANT CREATE SESSION
TO airbnb;

GRANT CREATE TABLE
TO airbnb;

GRANT INSERT any table
TO airbnb;

GRANT UPDATE any table
TO airbnb;

GRANT DELETE any table
TO airbnb;

grant CONNECT, RESOURCE to AIRBNB;

GRANT UNLIMITED TABLESPACE TO AIRBNB;

ALTER USER AIRBNB quota unlimited on UserAirBnb;