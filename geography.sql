CREATE DATABASE IF NOT EXISTS GEOGRAPHY;

USE GEOGRAPHY;

CREATE TABLE IF NOT EXISTS COUNTRIES (
ID           INT AUTO_INCREMENT PRIMARY KEY,
COUMTRY_NAME VARCHAR(200) NOT NULL,
COUNTRY_CODE VARCHAR(3) NOT NULL,
POPULATION   BIGINT,
AREA         DOUBLE
);


 
CREATE TABLE IF NOT EXISTS CITIES (
ID           INT AUTO_INCREMENT PRIMARY KEY,
CITY_NAME    VARCHAR(200) NOT NULL,
COUNTRY_ID   INT NOT NULL,
POPULATION   BIGINT,
AREA         DOUBLE,
FOUNDED_YEAR INT NOT NULL,
REGION       VARCHAR(200) NOT NULL,
FOREIGN KEY (COUNTRY_ID) REFERENCES COUNTRIES (ID) 
);

-- COUNTRIES

INSERT INTO COUNTRIES (COUMTRY_NAME, COUNTRY_CODE, POPULATION,  AREA) 
     VALUES ('UKRAINE','UA',36744636,603628);

INSERT INTO COUNTRIES (COUMTRY_NAME, COUNTRY_CODE, POPULATION,  AREA) 
     VALUES ('The United States of America','US',336343250,6036280);


-- CITIES

INSERT INTO CITIES (CITY_NAME, COUNTRY_ID, POPULATION,  AREA, FOUNDED_YEAR, REGION) 
     VALUES ('DNIPRO',1,968502,409718,1778,'Dnipropetrovsk region');
     
INSERT INTO CITIES (CITY_NAME, COUNTRY_ID, POPULATION,  AREA, FOUNDED_YEAR, REGION) 
     VALUES ('Kyiv',1,968502,409718,1105,'Kyiv region');


SELECT *
FROM COUNTRIES;

SELECT *
FROM CITIES;





