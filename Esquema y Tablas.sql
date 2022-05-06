CREATE SCHEMA `par` ;



==================== TABLAS ==================================================



======> Vehículo


CREATE TABLE PAR.VEHICLE (
Vehicle_Id INT COMMENT 'Vehicle Identification code',
Brand VARCHAR(50) NOT NULL COMMENT 'Vehicle Name',
Series VARCHAR(50) COMMENT 'Vehicle Description',

CREATION_DATE DATETIME,
CREATION_USER VARCHAR(50),
DATE_LAST_MODIFICATION DATETIME,
USER_LAST_MODIFICATION VARCHAR(50)
);

/*==COMMENTS==*/

ALTER TABLE PAR.Vehicle COMMENT 'Repository to storage information about Vehicles';

/*== PRIMARY KEY==*/

ALTER TABLE PAR.VEHICLE
AUTO_INCREMENT = 0,
CHANGE COLUMN Vehicle_Id Vehicle_Id INT NOT NULL AUTO_INCREMENT COMMENT 'Vehicle identification code.',
ADD PRIMARY KEY (Vehicle_Id);


/*==TRIGGERS==*/

/*INSERT TRIGGER*/
DROP TRIGGER IF EXISTS PAR.VEHICLE;
DELIMITER $$
USE EQ$$
CREATE DEFINER = CURRENT_USER TRIGGER PAR.VEHICLE_BEFORE_INSERT BEFORE INSERT ON PAR.VEHICLE FOR EACH ROW
	BEGIN
		SET NEW.CREATION_DATE = SYSDATE();
		SET NEW.CREATION_USER = USER();

END$$
DELIMITER;

/*UPDATE TRIGGER*/
DROP TRIGGER IF EXISTS PAR.VEHICLE_BEFORE_UPDATE;
DELIMITER $$
USE EQ$$
CREATE DEFINER = CURRENT_USER TRIGGER PAR.VEHICLE_BEFORE_UPDATE BEFORE UPDATE ON PAR.VEHICLE FOR EACH ROW
	BEGIN
		SET NEW.DATE_LAST_MODIFICATION = SYSDATE();
		SET NEW.USER_LAST_MODIFICATION = USER();
END$$





======> Teléfono

CREATE TABLE PAR.PHONE (
Phone_Id INT COMMENT 'Phone Identification code',
Number VARCHAR(50) NOT NULL COMMENT 'Phone Name',

CREATION_DATE DATETIME,
CREATION_USER VARCHAR(50),
DATE_LAST_MODIFICATION DATETIME,
USER_LAST_MODIFICATION VARCHAR(50)
);


/*==COMMENTS==*/

ALTER TABLE PAR.Phone COMMENT 'Repository to storage information about users phones';

/*== PRIMARY KEY==*/

ALTER TABLE PAR.Phone
AUTO_INCREMENT = 0,
CHANGE COLUMN Phone_Id Phone_Id INT NOT NULL AUTO_INCREMENT COMMENT 'Phone identification code.',
ADD PRIMARY KEY (Phone_Id);

/*==TRIGGERS==*/

/*INSERT TRIGGER*/
DROP TRIGGER IF EXISTS PAR.PHONE;
DELIMITER $$
USE EQ$$
CREATE DEFINER = CURRENT_USER TRIGGER PAR.PHONE_BEFORE_INSERT BEFORE INSERT ON PAR.PHONE FOR EACH ROW
	BEGIN
		SET NEW.CREATION_DATE = SYSDATE();
		SET NEW.CREATION_USER = USER();

END$$
DELIMITER;

/*UPDATE TRIGGER*/
DROP TRIGGER IF EXISTS PAR.PHONE_BEFORE_UPDATE;
DELIMITER $$
USE EQ$$
CREATE DEFINER = CURRENT_USER TRIGGER PAR.PHONE_BEFORE_UPDATE BEFORE UPDATE ON PAR.PHONE FOR EACH ROW
	BEGIN
		SET NEW.DATE_LAST_MODIFICATION = SYSDATE();
		SET NEW.USER_LAST_MODIFICATION = USER();
END$$

======> Departamento

CREATE TABLE PAR.DEPARTMENT (
Department_Id INT COMMENT 'Department Identification code',
name VARCHAR(50) NOT NULL COMMENT 'Phone Name',
description VARCHAR(100) NOT NULL COMMENT 'Phone Description',

CREATION_DATE DATETIME,
CREATION_USER VARCHAR(50),
DATE_LAST_MODIFICATION DATETIME,
USER_LAST_MODIFICATION VARCHAR(50)
);

/*==COMMENTS==*/

ALTER TABLE PAR.Department COMMENT 'Repository to storage information about departments';

/*== PRIMARY KEY==*/

ALTER TABLE PAR.DEPARTMENT
AUTO_INCREMENT = 0,
CHANGE COLUMN Department_Id Department_Id INT NOT NULL AUTO_INCREMENT COMMENT 'Vehicle identification code.',
ADD PRIMARY KEY (Department_Id);

/*==TRIGGERS==*/

/*INSERT TRIGGER*/
DROP TRIGGER IF EXISTS PAR.DEPARTMENT;
DELIMITER $$
USE EQ$$
CREATE DEFINER = CURRENT_USER TRIGGER PAR.DEPARTMENT_BEFORE_INSERT BEFORE INSERT ON PAR.DEPARTMENT FOR EACH ROW
	BEGIN
		SET NEW.CREATION_DATE = SYSDATE();
		SET NEW.CREATION_USER = USER();

END$$
DELIMITER;

/*UPDATE TRIGGER*/
DROP TRIGGER IF EXISTS PAR.DEPARTMENT_BEFORE_UPDATE;
DELIMITER $$
USE EQ$$
CREATE DEFINER = CURRENT_USER TRIGGER PAR.DEPARTMENT_BEFORE_UPDATE BEFORE UPDATE ON PAR.DEPARTMENT FOR EACH ROW
	BEGIN
		SET NEW.DATE_LAST_MODIFICATION = SYSDATE();
		SET NEW.USER_LAST_MODIFICATION = USER();
END$$

======> Email

CREATE TABLE PAR.Email (
Email_Id INT COMMENT 'Email Identification code',
name VARCHAR(50) NOT NULL COMMENT 'Email Name',

CREATION_DATE DATETIME,
CREATION_USER VARCHAR(50),
DATE_LAST_MODIFICATION DATETIME,
USER_LAST_MODIFICATION VARCHAR(50)
);

/*==COMMENTS==*/

ALTER TABLE PAR.Email COMMENT 'Repository to storage information about users emails';

/*== PRIMARY KEY==*/

ALTER TABLE PAR.EMAIL
AUTO_INCREMENT = 0,
CHANGE COLUMN Email_Id Email_Id INT NOT NULL AUTO_INCREMENT COMMENT 'Email identification code.',
ADD PRIMARY KEY (Email_Id);

/*==TRIGGERS==*/

/*INSERT TRIGGER*/
DROP TRIGGER IF EXISTS PAR.EMAIL;
DELIMITER $$
USE EQ$$
CREATE DEFINER = CURRENT_USER TRIGGER PAR.EMAIL_BEFORE_INSERT BEFORE INSERT ON PAR.EMAIL FOR EACH ROW
	BEGIN
		SET NEW.CREATION_DATE = SYSDATE();
		SET NEW.CREATION_USER = USER();

END$$
DELIMITER;

/*UPDATE TRIGGER*/
DROP TRIGGER IF EXISTS PAR.EMAIL_BEFORE_UPDATE;
DELIMITER $$
USE EQ$$
CREATE DEFINER = CURRENT_USER TRIGGER PAR.EMAIL_BEFORE_UPDATE BEFORE UPDATE ON PAR.EMAIL FOR EACH ROW
	BEGIN
		SET NEW.DATE_LAST_MODIFICATION = SYSDATE();
		SET NEW.USER_LAST_MODIFICATION = USER();
END$$


======> Parking

CREATE TABLE PAR.Parking (
Parking_Id INT COMMENT 'Parking  Identification code',
name VARCHAR(50) NOT NULL COMMENT 'Parking Name',
description VARCHAR(150) NOT NULL COMMENT 'Parking Description',
location VARCHAR(300) NOT NULL COMMENT 'Parking Location',
schedule VARCHAR(150) NOT NULL COMMENT 'Parking Schedule',
CREATION_DATE DATETIME,
CREATION_USER VARCHAR(50),
DATE_LAST_MODIFICATION DATETIME,
USER_LAST_MODIFICATION VARCHAR(50)
);


/*==COMMENTS==*/

ALTER TABLE PAR.Parking COMMENT 'Repository to storage information about car parkings';

/*== PRIMARY KEY==*/

ALTER TABLE PAR.PARKING
AUTO_INCREMENT = 0,
CHANGE COLUMN Parking_Id Parking_Id INT NOT NULL AUTO_INCREMENT COMMENT 'Parking identification code.',
ADD PRIMARY KEY (Parking_Id);

/*==TRIGGERS==*/

/*INSERT TRIGGER*/
DROP TRIGGER IF EXISTS PAR.PARKING;
DELIMITER $$
USE EQ$$
CREATE DEFINER = CURRENT_USER TRIGGER PAR.PARKING_BEFORE_INSERT BEFORE INSERT ON PAR.PARKING FOR EACH ROW
	BEGIN
		SET NEW.CREATION_DATE = SYSDATE();
		SET NEW.CREATION_USER = USER();

END$$
DELIMITER;

/*UPDATE TRIGGER*/
DROP TRIGGER IF EXISTS PAR.PARKING_BEFORE_UPDATE;
DELIMITER $$
USE EQ$$
CREATE DEFINER = CURRENT_USER TRIGGER PAR.PARKING_BEFORE_UPDATE BEFORE UPDATE ON PAR.PARKING FOR EACH ROW
	BEGIN
		SET NEW.DATE_LAST_MODIFICATION = SYSDATE();
		SET NEW.USER_LAST_MODIFICATION = USER();
END$$




======> User

CREATE TABLE PAR.User (
User_Id INT COMMENT 'User Identification code',
fullname VARCHAR(100) NOT NULL COMMENT 'User Full Name',
type VARCHAR(50) NOT NULL COMMENT 'User Type',

CREATION_DATE DATETIME,
CREATION_USER VARCHAR(50),
DATE_LAST_MODIFICATION DATETIME,
USER_LAST_MODIFICATION VARCHAR(50)
);

ALTER TABLE `par`.`user` 
ADD COLUMN `department_id` INT NULL AFTER `type`,
ADD COLUMN `phone_id` INT NULL AFTER `department_id`;


/*==COMMENTS==*/

ALTER TABLE PAR.User COMMENT 'Repository to storage information about user';

/*== PRIMARY KEY==*/

ALTER TABLE PAR.USER
AUTO_INCREMENT = 0,
CHANGE COLUMN User_Id User_Id INT NOT NULL AUTO_INCREMENT COMMENT 'User identification code.',
ADD PRIMARY KEY (User_Id);


/*==TRIGGERS==*/

/*INSERT TRIGGER*/
DROP TRIGGER IF EXISTS PAR.USER;
DELIMITER $$
USE EQ$$
CREATE DEFINER = CURRENT_USER TRIGGER PAR.USER_BEFORE_INSERT BEFORE INSERT ON PAR.USER FOR EACH ROW
	BEGIN
		SET NEW.CREATION_DATE = SYSDATE();
		SET NEW.CREATION_USER = USER();

END$$
DELIMITER;

/*UPDATE TRIGGER*/
DROP TRIGGER IF EXISTS PAR.USER_BEFORE_UPDATE;
DELIMITER $$
USE EQ$$
CREATE DEFINER = CURRENT_USER TRIGGER PAR.USER_BEFORE_UPDATE BEFORE UPDATE ON PAR.USER FOR EACH ROW
	BEGIN
		SET NEW.DATE_LAST_MODIFICATION = SYSDATE();
		SET NEW.USER_LAST_MODIFICATION = USER();
END$$


/*===FOREIGN KEYS==*/
ALTER TABLE PAR.USER
ADD INDEX fk_user_department_id_idx (DEPARTMENT_ID ASC) VISIBLE;

ALTER TABLE PAR.USER
	ADD CONSTRAINT fk_user_department_id
		FOREIGN KEY (DEPARTMENT_ID)
		REFERENCES PAR.DEPARTMENT (DEPARTMENT_ID)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION,
	ADD CONSTRAINT fk_user_phone_id
		FOREIGN KEY (Phone_ID)
		REFERENCES PAR.PHONE (Phone_ID)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION;














==================== TABLAS N:N ==================================================




======> User Has Vehicle    (UserXVehicle)

CREATE TABLE PAR.UserHasVehicle (
User_Id INT COMMENT 'User Identification code',
Vehicle_Id INT COMMENT 'Vehicle Identification code',

CREATION_DATE DATETIME,
CREATION_USER VARCHAR(50),
DATE_LAST_MODIFICATION DATETIME,
USER_LAST_MODIFICATION VARCHAR(50)
);

/*==COMMENTS==*/

ALTER TABLE PAR.UserHasVehicle COMMENT 'Repository to storage information about users vehicles';


/*== PRIMARY KEY==*/

ALTER TABLE PAR.USERHASVEHICLE
ADD PRIMARY KEY (USER_ID, VEHICLE_ID);


/*==TRIGGERS==*/

/*INSERT TRIGGER*/
DROP TRIGGER IF EXISTS PAR.UserHasVehicle_BEFORE_INSERT;
DELIMITER $$
USE EQ$$
CREATE DEFINER = CURRENT_USER TRIGGER  PAR.UserHasVehicle_BEFORE_INSERT BEFORE INSERT ON  PAR.UserHasVehicle FOR EACH ROW
	BEGIN
		SET NEW.CREATION_DATE = SYSDATE();
		SET NEW.CREATION_USER = USER();

END$$
DELIMITER;

/*UPDATE TRIGGER*/
DROP TRIGGER IF EXISTS  PAR.UserHasVehicle_BEFORE_UPDATE;
DELIMITER $$
USE EQ$$
CREATE DEFINER = CURRENT_USER TRIGGER  PAR.UserHasVehicle_BEFORE_UPDATE BEFORE UPDATE ON PAR.UserHasVehicle FOR EACH ROW
	BEGIN
		SET NEW.DATE_LAST_MODIFICATION = SYSDATE();
		SET NEW.USER_LAST_MODIFICATION = USER();
END$$



/*===FOREIGN KEYS==*/

ALTER TABLE PAR.UserHasVehicle
	ADD CONSTRAINT fk_userhasvehicle_user_id
	FOREIGN KEY (USER_ID)
	REFERENCES PAR.USER (USER_ID)
	ON DELETE NO ACTION
	ON UPDATE NO ACTION,
  
	ADD CONSTRAINT fk_userhasvehicle_vehicle_id
	FOREIGN KEY (VEHICLE_ID)
	REFERENCES PAR.VEHICLE (VEHICLE_ID)
	ON DELETE NO ACTION
	ON UPDATE NO ACTION;


======> User Has Email (UserXEmail)

CREATE TABLE PAR.UserHasEmail (
User_Id INT COMMENT 'User Identification code',
Email_Id INT COMMENT 'Email Identification code',

CREATION_DATE DATETIME,
CREATION_USER VARCHAR(50),
DATE_LAST_MODIFICATION DATETIME,
USER_LAST_MODIFICATION VARCHAR(50)
);

/*==COMMENTS==*/

ALTER TABLE PAR.UserHasEmail COMMENT 'Repository to storage information about users email';

/*== PRIMARY KEY==*/

ALTER TABLE PAR.USERHASEMAIL
ADD PRIMARY KEY (USER_ID, Email_ID);

/*==TRIGGERS==*/

/*INSERT TRIGGER*/
DROP TRIGGER IF EXISTS PAR.UserHasEmail_BEFORE_INSERT;
DELIMITER $$
USE PAR$$
CREATE DEFINER = CURRENT_USER TRIGGER PAR.UserHasEmail_BEFORE_INSERT BEFORE INSERT ON  PAR.UserHasEmail FOR EACH ROW
	BEGIN
		SET NEW.CREATION_DATE = SYSDATE();
		SET NEW.CREATION_USER = USER();

END$$
DELIMITER;

/*UPDATE TRIGGER*/
DROP TRIGGER IF EXISTS  PAR.UserHasEmail_BEFORE_UPDATE;
DELIMITER $$
USE PAR$$
CREATE DEFINER = CURRENT_USER TRIGGER  PAR.UserHasEmail_BEFORE_UPDATE BEFORE UPDATE ON PAR.UserHasEmail FOR EACH ROW
	BEGIN
		SET NEW.DATE_LAST_MODIFICATION = SYSDATE();
		SET NEW.USER_LAST_MODIFICATION = USER();
END$$

/*===FOREIGN KEYS==*/

ALTER TABLE PAR.UserHasEmail
	ADD CONSTRAINT fk_userhasemail_user_id
	FOREIGN KEY (USER_ID)
	REFERENCES PAR.USER (USER_ID)
	ON DELETE NO ACTION
	ON UPDATE NO ACTION,
  
	ADD CONSTRAINT fk_userhasemail_email_id
	FOREIGN KEY (Email_ID)
	REFERENCES PAR.EMAIL (Email_ID)
	ON DELETE NO ACTION
	ON UPDATE NO ACTION;




======> User Reserve Parking (UserXParking)

CREATE TABLE PAR.UserReserveParking (
User_Id INT COMMENT 'User Identification code',
Parking_Id INT COMMENT 'Parking Identification code',
Reserve_Id INT COMMENT 'Reserve Identification code',
description VARCHAR(150) NOT NULL COMMENT 'Reserve Description',
DayTime_Start DATETIME NOT NULL COMMENT 'Day and Time Start of the Reservation',
DayTime_Final DATETIME NOT NULL COMMENT 'Day and Time Final of the Reservation',

CREATION_DATE DATETIME,
CREATION_USER VARCHAR(50),
DATE_LAST_MODIFICATION DATETIME,
USER_LAST_MODIFICATION VARCHAR(50)
);

/*==COMMENTS==*/

ALTER TABLE PAR.UserReserveParking COMMENT 'Repository to storage information about users email';

/*== PRIMARY KEY==*/

ALTER TABLE PAR.USERRESERVEPARKING
ADD PRIMARY KEY (USER_ID, Parking_Id);


/*==TRIGGERS==*/

/*INSERT TRIGGER*/
DROP TRIGGER IF EXISTS PAR.UserReserveParking_BEFORE_INSERT;
DELIMITER $$
USE PAR$$
CREATE DEFINER = CURRENT_USER TRIGGER PAR.UserReserveParking_BEFORE_INSERT BEFORE INSERT ON  PAR.UserReserveParking FOR EACH ROW
	BEGIN
		SET NEW.CREATION_DATE = SYSDATE();
		SET NEW.CREATION_USER = USER();

END$$
DELIMITER;

/*UPDATE TRIGGER*/
DROP TRIGGER IF EXISTS  PAR.UserReserveParking_BEFORE_UPDATE;
DELIMITER $$
USE PAR$$
CREATE DEFINER = CURRENT_USER TRIGGER  PAR.UserReserveParking_BEFORE_UPDATE BEFORE UPDATE ON PAR.UserReserveParking FOR EACH ROW
	BEGIN
		SET NEW.DATE_LAST_MODIFICATION = SYSDATE();
		SET NEW.USER_LAST_MODIFICATION = USER();
END$$


/*===FOREIGN KEYS==*/

ALTER TABLE PAR.UserReserveParking
	ADD CONSTRAINT fk_userreserveparking_user_id
	FOREIGN KEY (USER_ID)
	REFERENCES PAR.USER (USER_ID)
	ON DELETE NO ACTION
	ON UPDATE NO ACTION,
  
	ADD CONSTRAINT fk_userreserveparking_parking_id
	FOREIGN KEY (Parking_ID)
	REFERENCES PAR.Parking (Parking_ID)
	ON DELETE NO ACTION
	ON UPDATE NO ACTION;



