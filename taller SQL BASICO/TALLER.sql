/*
    AUTOR: LUIS CORREAL VIEROS
    FECHA: 28/03/2021
    TALLER SQLBASICO
*/



/*
A Seleccionar el listado de todas las columnas de todos los empleados.
*/
SELECT  *
From    employees;

/*
B Seleccionar los empleados igual que el anterior y ordenados por nombre y
apellido
*/

SELECT      *
FROM        Employees
ORDER BY    FIRST_NAME, LAST_NAME;

/*
C Seleccionar los empleados que su nombre empieza por la letra K.
*/

SELECT      *
FROM        Employees
WHERE
    FIRST_NAME LIKE('K%');
    
/*
D Seleccionar los empleados que su nombre empieza por la letra K y ordena su
orden de presentación
*/
   
SELECT      *
FROM        Employees
WHERE
            FIRST_NAME LIKE('K%')
ORDER BY    first_name, last_name;  

/*
E Seleccionar el número (código), del departamento con la cantidad de empleados
que hay en él.
*/


SELECT      DEPARTMENT_ID, COUNT(EMPLOYEE_ID) -- seria mejor count(deparment_id) para solo contar empleados que tengan departamento
FROM        EMPLOYEES
GROUP BY    DEPARTMENT_ID;


/*
F Averigüe cual es la máxima cantidad máxima de empleados que departamento
alguno tenga
*/

SELECT      MAX(COUNT(EMPLOYEE_ID))
FROM        EMPLOYEES
GROUP BY    DEPARTMENT_ID;

/*
G Seleccionar el número y nombre del empleado con el nombre del departamento
en el que trabaja.
*/

SELECT  *
From    DEPARTMENTS;

/*
H Seleccionar el número, nombre y salario de los empleados que trabajan en el
departamento SALES
*/
SELECT      EMPLOYEE_ID, FIRST_NAME, LAST_NAME, SALARY
FROM        EMPLOYEES JOIN departments d
USING       (department_id)
WHERE       d.DEPARTMENT_NAME = 'Sales';

/*
I Igual a la anterior pero ordenado de mayor a menor salario.
*/

SELECT      EMPLOYEE_ID, FIRST_NAME, LAST_NAME, SALARY
FROM        EMPLOYEES JOIN departments d
USING       (department_id)
WHERE       d.DEPARTMENT_NAME = 'Sales'
ORDER BY    SALARY desc;

/*
SE CREA TABLA PARA GRADOS SALARIALES
*/
CREATE TABLE    grade_salary(
        GRADE           NUMBER(2) NOT NULL,
        MIN_SALARY      NUMBER(8,2),
        MAX_SALARY      NUMBER(8,2)
        );

INSERT INTO     GRADE_SALARY
        VALUES(1,0,3999.99);

INSERT INTO     GRADE_SALARY
        VALUES(2,4000,7999.99);
        
INSERT INTO     GRADE_SALARY
        VALUES(3,8000,11999.99);
        
INSERT INTO     GRADE_SALARY
        VALUES(4,12000,16999.99);
        
INSERT INTO     GRADE_SALARY
        VALUES(5,16000,20999.99);
        
INSERT INTO     GRADE_SALARY
        VALUES(6,21000,26000);        
      
SELECT * FROM GRADE_SALARY; 

/*
J Seleccionar el número y nombre de cada empleado junto con su salario y grado
salarial
*/
SELECT      e.EMPLOYEE_ID, e.LAST_NAME, e.SALARY, g.GRADE
FROM        employees e JOIN GRADE_SALARY g
ON          e.SALARY
            BETWEEN g.MIN_SALARY AND g.MAX_SALARY;

/*
K  Seleccionar los números, nombres y grados salariales de los empleados que
tienen grados salariales 2, 4 o 5.
*/
SELECT      EMPLOYEE_ID, LAST_NAME, SALARY, GRADE
FROM        (
            SELECT      e.EMPLOYEE_ID, e.LAST_NAME, e.SALARY, g.GRADE
            FROM        employees e JOIN GRADE_SALARY g
            ON          e.SALARY
                        BETWEEN g.MIN_SALARY AND g.MAX_SALARY
            )
WHERE       GRADE IN ('2','4','5');


SELECT  *
From   DEPARTMENTS;

/*
L Seleccionar el id del departamento con el promedio salarial ordenado de mayor a
menor.
*/

SELECT      e.EMPLOYEE_ID, e.FIRST_NAME, e.LAST_NAME, SALARY, j.JOB_TITLE
FROM        EMPLOYEES e JOIN JOBS j
USING       (JOB_ID);

/*
M Seleccionar el nombre del departamento con el promedio salarial ordenado de
mayor a menor.
*/

SELECT      DEPARTMENT_NAME, AVG(e.SALARY)
FROM        EMPLOYEES e JOIN DEPARTMENTS d
USING       (DEPARTMENT_ID)
GROUP BY    DEPARTMENT_NAME
ORDER BY    AVG(e.SALARY);

/*
N Seleccionar el número (código), del departamento con la cantidad de empleados
del departamento con mayor número de empleados.
*/
SELECT      DEPARTMENT_ID, CANTIDAD
FROM        (
            SELECT      DEPARTMENT_ID, COUNT(EMPLOYEE_ID) CANTIDAD
            FROM        EMPLOYEES
            GROUP BY    DEPARTMENT_ID
            ORDER BY    COUNT(EMPLOYEE_ID) DESC
            )
WHERE ROWNUM=1;

/*
O  Seleccionar los jefes (manager), presentando el número (código), nombres y el
nombre del departamento donde trabajan.
*/
SELECT      d.MANAGER_ID cod_jefe, 
            e.FIRST_NAME || ' ' || e.LAST_NAME nombre, 
            d.DEPARTMENT_NAME
FROM        DEPARTMENTS d JOIN EMPLOYEES e
ON          d.MANAGER_ID = e.EMPLOYEE_ID;

/*
P Determinar los nombres de cada empleado junto con el grado salarial del
empleado, el grado salarial del jefe y la diferencia de grado salarial existente con su
jefe (grado del jefe – grado del empleado).
*/
SELECT      e.LAST_NAME, e.SALARY, GE.GRADE grado_empleado, m.employee_id cod_jefe ,GJ.GRADE grado_jefe, ( GE.GRADE - GJ.GRADE) diferencia_grado
FROM        employees e JOIN employees m
            ON  e.manager_id = m.employee_id
JOIN GRADE_SALARY GE
            ON  e.SALARY
                BETWEEN GE.MIN_SALARY AND GE.MAX_SALARY
JOIN GRADE_SALARY GJ
            ON  m.SALARY
                BETWEEN GJ.MIN_SALARY AND GJ.MAX_SALARY;             

/* 
Q Determinar los códigos y nombres de los distintos departamentos en donde hay 
al menos un empleado que gana más de 3000 (Que no hayan tuplas repetidas).
*/
SELECT      d.DEPARTMENT_ID, d.DEPARTMENT_NAME
FROM        DEPARTMENTS d 
INNER JOIN  employees e
        ON  e.DEPARTMENT_ID = d.DEPARTMENT_ID
            AND e.SALARY > 3000
GROUP BY d.DEPARTMENT_ID, d.DEPARTMENT_NAME;

/*
R Determinar los códigos y nombres de los distintos departamentos en donde hay 
al menos dos empleados distintos que ganan más de 2500.
*/

SELECT      d.DEPARTMENT_ID, d.DEPARTMENT_NAME, COUNT(DISTINCT e.EMPLOYEE_ID) cant
FROM        DEPARTMENTS d 
INNER JOIN  EMPLOYEES e
        ON e.DEPARTMENT_ID = d.DEPARTMENT_ID
            AND e.SALARY > 2500
GROUP BY    d.DEPARTMENT_ID, d.DEPARTMENT_NAME
HAVING COUNT(DISTINCT e.EMPLOYEE_ID) >= 2
ORDER BY    cant DESC;

/*
S Determinar los números y nombres de los empleados que ganan más dinero que 
su respectivo jefe
*/
SELECT
        e.EMPLOYEE_ID empleado,
        e.FIRST_NAME || e.last_name nombre_empleado,
        e.SALARY salario_empleado, 
        J.EMPLOYEE_ID jefe,
        J.SALARY salario_jefe
FROM    employees e 
INNER JOIN employees J 
    ON e.manager_id = J.employee_id
WHERE   e.SALARY > J.SALARY;

/*
T Determinar los números y nombres de los departamentos en donde al menos uno 
de los empleados gana más de 3000 e indicar la cantidad identificada por cada 
departamento.
*/
SELECT
        d.department_id,
        d.department_name,
        COUNT(e.employee_id) cant
FROM    departments d 
INNER JOIN employees e
    ON e.department_id = d.department_id
        AND e.salary > 3000
GROUP BY d.department_id, d.department_name;