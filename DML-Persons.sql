//----------Operations performed on persons.jobs table-------------


INSERT INTO persons.jobs (JOB_NAME, SALARY) VALUES ('Programmer', 3000);
INSERT INTO persons.jobs (JOB_NAME, SALARY, JOB_DESCRIPTION) VALUES ('Doctor', 5000, 'performs surgery');
INSERT INTO persons.jobs (JOB_NAME, SALARY) VALUES ('Courier', 1000);
INSERT INTO persons.jobs (JOB_NAME, SALARY) VALUES ('Mechanic', 2000);


SELECT * FROM persons.jobs;



//-----------Operations performed on persons.cars table-------------


INSERT INTO persons.cars (BRAND, MODEL) VALUES ('Audi', 'A4');
INSERT INTO persons.cars (BRAND, MODEL) VALUES ('BMW', 'X6');
INSERT INTO persons.cars (BRAND, MODEL) VALUES ('Mercedes', 'S-Class');
INSERT INTO persons.cars (BRAND, MODEL) VALUES ('Porsche', 'Taycan');

UPDATE persons.cars
SET PERSON_ID = 3
WHERE CAR_ID = 4;

SELECT persons.cars.BRAND, persons.cars.MODEL, persons.people.FIRST_NAME, persons.people.LAST_NAME
FROM ((persons.cars
INNER JOIN persons.people ON persons.cars.PEOPLE_ID = persons.people.PEOPLE_ID));


SELECT persons.cars.BRAND, persons.cars.MODEL
FROM persons.cars
LEFT JOIN persons.people
ON persons.cars.PEOPLE_ID = persons.persons.PEOPLE_ID;



SELECT * FROM persons.cars;


//----------------Operations performed on persons.addresses table-------------


INSERT INTO persons.addresses (STREET_NUMBER, STREET_NAME) VALUES (24, 'Maine');
INSERT INTO persons.addresses (STREET_NUMBER, STREET_NAME) VALUES (50, 'Flower-Power');
INSERT INTO persons.addresses (STREET_NUMBER, STREET_NAME) VALUES (19, 'DFRTG');
INSERT INTO persons.addresses (STREET_NUMBER, STREET_NAME) VALUES (80, 'udurjx');



SELECT * FROM persons.addresses;


//----------------Operations performed on persons.people table--------------

UPDATE persons.people
SET ADDRESS_ID = 3
WHERE PEOPLE_ID = 4;

SELECT persons.people.FIRST_NAME, persons.people.LAST_NAME, persons.addresses.STREET_NUMBER
FROM ((persons.people
INNER JOIN persons.addresses ON persons.people.ADDRESS_ID = persons.addresses.ADDRESS_ID));


SELECT persons.people.FIRST_NAME, persons.people.LAST_NAME, persons.people.ADDRESS_ID
FROM persons.people
LEFT JOIN persons.addresses
ON persons.people.ADDRESS_ID = persons.addresses.ADDRESS_ID;

DELETE FROM persons.people WHERE id = 4;

SELECT * FROM persons.people;