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

DELETE FROM persons.people WHERE id = 4;

SELECT * FROM persons.people;