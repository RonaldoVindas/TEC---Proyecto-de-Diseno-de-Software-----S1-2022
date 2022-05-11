-- Tables
CREATE TABLE DEPARTMENTS (
	ID INT AUTO_INCREMENT NOT NULL,
    NAME_DEPARTMENT VARCHAR(50) NOT NULL,
    CREATEDAT DATE,
    UPDATEDAT DATE,
    CONSTRAINT PK_DEPARTMENT PRIMARY KEY (ID)
);

CREATE TABLE USERS (
	ID INT AUTO_INCREMENT NOT NULL,
    FULL_NAME VARCHAR(150) NOT NULL,
    EMAIL VARCHAR(50) NOT NULL,
    EMAIL2 VARCHAR(50),
    PASSWORD_USER VARCHAR(256) NOT NULL,
    TYPE_USER VARCHAR(50) NOT NULL,
    PHONE_NUMBER INT NOT NULL,
	DESCRIPTION_JOB VARCHAR(150),
	ID_DEPARTMENT INT NOT NULL,
    CREATEDAT DATE,
    UPDATEDAT DATE,
    CONSTRAINT PK_USER PRIMARY KEY (ID),
    FOREIGN KEY FK_UXD_ID_DEPARTMENT (ID_DEPARTMENT) REFERENCES DEPARTMENTS(ID),
    UNIQUE (EMAIL),
	UNIQUE (EMAIL2) 
);

CREATE TABLE VEHICLE (
    ID INT AUTO_INCREMENT NOT NULL,
	VEHICLE_PLATE VARCHAR(6) NOT NULL,
    VEHICLE_BRAND VARCHAR(50) NOT NULL,
    VEHICLE_SERIES VARCHAR(50) NOT NULL,
    ID_USER INT NOT NULL,
    CREATEDAT DATE,
    UPDATEDAT DATE,
    CONSTRAINT PK_VEHICLE PRIMARY KEY (ID),
    FOREIGN KEY FK_VXU_ID_USERS (ID_USER) REFERENCES USERS(ID)
);

CREATE TABLE PARKINGS (
	ID INT AUTO_INCREMENT NOT NULL,
    NAME_PARKING VARCHAR (50) NOT NULL,
    TYPE_PARKING VARCHAR (50) NOT NULL,
    LOCATION_PARKING VARCHAR (150) NOT NULL,
    SCHEDULE_START VARCHAR (25) NOT NULL,
    SCHEDULE_END VARCHAR (25) NOT NULL,
    SPACE_PARKING INT NOT NULL,
    CREATEDAT DATE,
    UPDATEDAT DATE,
    CONSTRAINT PK_PARKING PRIMARY KEY (ID)
);