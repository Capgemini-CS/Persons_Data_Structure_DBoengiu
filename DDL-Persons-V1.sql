------------Add ADDRESS_ID Column to persons.people table--------------------


ALTER TABLE persons.people
ADD COLUMN ADDRESS_ID INT AFTER CNP;


------------Add ADDRESS_ID Column to persons.people table--------------------



ALTER TABLE persons.people
ADD FOREIGN KEY (ADDRESS_ID) REFERENCES persons.addresses(ADDRESS_ID);


------------Add PEOPLE_ID Column to persons.cars table--------------------


ALTER TABLE persons.cars
ADD COLUMN PEOPLE_ID INT AFTER MODEL;


------------Add PEOPLE_ID Column to persons.cars table--------------------



ALTER TABLE persons.cars
ADD FOREIGN KEY (PEOPLE_ID) REFERENCES persons.people(PEOPLE_ID);