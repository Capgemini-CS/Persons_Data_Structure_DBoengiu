---------------Create persons.people table------------


CREATE TABLE persons.people(
   PEOPLE_ID INT NOT NULL AUTO_INCREMENT,
   FIRST_NAME VARCHAR(100) NOT NULL,
   LAST_NAME VARCHAR(100) NOT NULL,
   CNP VARCHAR(13) NOT NULL UNIQUE,
   PRIMARY KEY ( PEOPLE_ID )
);



----------------Create persons.cars table ---------------------------------


create table persons.cars(
   CAR_ID INT NOT NULL AUTO_INCREMENT,
   BRAND VARCHAR(100) NOT NULL,
   MODEL VARCHAR(100) NOT NULL,
   PRIMARY KEY ( CAR_ID )
);


-------------Create persons.jobs table----------------------------------


create table persons.jobs(
   JOB_ID INT NOT NULL AUTO_INCREMENT,
   JOB_NAME VARCHAR(100) NOT NULL,
   SALARY INT NOT NULL,
   JOB_DESCRIPTION VARCHAR(1000),
   PRIMARY KEY ( JOB_ID )
);



--------------Create persons.addresses--------------------------------


create table persons.addresses(
   ADDRESS_ID INT NOT NULL AUTO_INCREMENT,
   STREET_NUMBER INT) NOT NULL,
   STREET_NAME VARCHAR(40) NOT NULL,
   PRIMARY KEY ( ADDRESS_ID )
);
