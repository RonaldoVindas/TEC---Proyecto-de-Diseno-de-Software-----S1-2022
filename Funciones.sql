=================================> DEPARTMENT


USE `par`;
DROP function IF EXISTS `Control_Department_getDepartmentName`;

DELIMITER $$
USE `par`$$
CREATE FUNCTION `Control_Department_getDepartmentName` (pId INT)
RETURNS VARCHAR(50)
DETERMINISTIC
BEGIN
DECLARE vcName VARCHAR(50);
SET vcName = (SELECT name FROM Department WHERE Department_Id = pId);
RETURN vcName;

END$$

DELIMITER ;


/*///////////////////////////////*/


USE `par`;
DROP function IF EXISTS `Control_Department_getDepartmentDescription`;

DELIMITER $$
USE `par`$$
CREATE FUNCTION `Control_Department_getDepartmentDescription` (pId INT)
RETURNS VARCHAR(100)
DETERMINISTIC
BEGIN
DECLARE vcDescription VARCHAR(100);
SET vcDescription = (SELECT description FROM Department WHERE Department_Id = pId);
RETURN vcDescription;
END$$

DELIMITER ;


=================================> EMAIL

USE `par`;
DROP function IF EXISTS `Control_Email_getEmailName`;

DELIMITER $$
USE `par`$$
CREATE FUNCTION `Control_Email_getEmailName` (pId INT)
RETURNS VARCHAR(50)
DETERMINISTIC
BEGIN
DECLARE vcName VARCHAR(150);
SET vcName = (SELECT name FROM email WHERE email_Id = pId);
RETURN vcName;
END$$

DELIMITER ;



=================================> PARKING



USE `par`;
DROP function IF EXISTS `Control_Parking_getParkingName`;

DELIMITER $$
USE `par`$$
CREATE FUNCTION `Control_Parking_getParkingName` (pId INT)
RETURNS VARCHAR(50)
DETERMINISTIC
BEGIN
DECLARE vcName VARCHAR(50);
SET vcName = (SELECT name FROM parking WHERE Parking_Id = pId);
RETURN vcName;
END$$

DELIMITER ;

/*///////////////////////////////*/


USE `par`;
DROP function IF EXISTS `Control_Parking_getParkingDescription`;

DELIMITER $$
USE `par`$$
CREATE FUNCTION `Control_Parking_getParkingDescription` (pId INT)
RETURNS VARCHAR(150)
DETERMINISTIC
BEGIN
DECLARE vcDescription VARCHAR(150);
SET vcDescription = (SELECT description FROM parking WHERE Parking_Id = pId);
RETURN vcDescription;
END$$

DELIMITER ;


/*///////////////////////////////*/




USE `par`;
DROP function IF EXISTS `Control_Parking_getParkingLocation`;

DELIMITER $$
USE `par`$$
CREATE FUNCTION `Control_Parking_getParkingLocation` (pId INT)
RETURNS VARCHAR(300)
DETERMINISTIC
BEGIN
DECLARE vcLocation VARCHAR(300);
SET vcLocation = (SELECT location FROM parking WHERE Parking_Id = pId);
RETURN vcLocation;
END$$

DELIMITER ;


/*///////////////////////////////*/




USE `par`;
DROP function IF EXISTS `Control_Parking_getParkingSchedule`;

DELIMITER $$
USE `par`$$
CREATE FUNCTION `Control_Parking_getParkingSchedule` (pId INT)
RETURNS VARCHAR(150)
DETERMINISTIC
BEGIN
DECLARE vcSchedule VARCHAR(150);
SET vcSchedule = (SELECT schedule FROM parking WHERE Parking_Id = pId);
RETURN vcSchedule;
END$$

DELIMITER ;



=================================> PHONE


USE `par`;
DROP function IF EXISTS `Control_Phone_getPhoneNumber`;

DELIMITER $$
USE `par`$$
CREATE FUNCTION `Control_Phone_getPhoneNumber` (pId INT)
RETURNS VARCHAR(50)
DETERMINISTIC
BEGIN
DECLARE vcNumber VARCHAR(50);
SET vcNumber = (SELECT number FROM Phone WHERE Phone_Id = pId);
RETURN vcNumber;
END$$

DELIMITER ;


=================================> USER


USE `par`;
DROP function IF EXISTS `Control_User_getUserFullname`;

DELIMITER $$
USE `par`$$
CREATE FUNCTION `Control_User_getUserFullname` (pId INT)
RETURNS VARCHAR(100)
DETERMINISTIC
BEGIN
DECLARE vcFull VARCHAR(100);
SET vcFull = (SELECT fullname FROM User WHERE User_Id = pId);
RETURN vcFull;
END$$

DELIMITER ;


/*///////////////////////////////*/




USE `par`;
DROP function IF EXISTS `Control_User_getUserType`;

DELIMITER $$
USE `par`$$
CREATE FUNCTION `Control_User_getUserType` (pId INT)
RETURNS VARCHAR(50)
DETERMINISTIC
BEGIN
DECLARE vcType VARCHAR(50);
SET vcType = (SELECT type FROM User WHERE User_Id = pId);
RETURN vcType;
END$$

DELIMITER ;


/*///////////////////////////////*/



USE `par`;
DROP function IF EXISTS `Control_User_getUserDepartmentId`;

DELIMITER $$
USE `par`$$
CREATE FUNCTION `Control_User_getUserDepartmentId` (pId INT)
RETURNS INTEGER
DETERMINISTIC
BEGIN
DECLARE vcId INTEGER;
SET vcId = (SELECT Department_Id FROM User WHERE User_Id = pId);
RETURN vcId;
END$$

DELIMITER ;

/*///////////////////////////////*/



USE `par`;
DROP function IF EXISTS `Control_User_getUserPhoneId`;

DELIMITER $$
USE `par`$$
CREATE FUNCTION `Control_User_getUserPhoneId` (pId INT)
RETURNS INTEGER
DETERMINISTIC
BEGIN
DECLARE vcId INTEGER;
SET vcId = (SELECT Phone_Id FROM User WHERE User_Id = pId);
RETURN vcId;
END$$

DELIMITER ;


=================================> USER HAS EMAIL



USE `par`;
DROP function IF EXISTS `Control_UserHasEmail_getUserHasEmailUserId`;

DELIMITER $$
USE `par`$$
CREATE FUNCTION `Control_UserHasEmail_getUserHasEmailUserId` (pId INT)
RETURNS INTEGER
DETERMINISTIC
BEGIN
DECLARE vcId INTEGER;
SET vcId = (SELECT User_Id FROM UserHasEmail WHERE Email_Id = pId);
RETURN vcId;
END$$

DELIMITER ;



/*///////////////////////////////*/





USE `par`;
DROP function IF EXISTS `Control_UserHasEmail_getUserHasEmailEmailId`;

DELIMITER $$
USE `par`$$
CREATE FUNCTION `Control_UserHasEmail_getUserHasEmailEmailId` (pId INT)
RETURNS INTEGER
DETERMINISTIC
BEGIN
DECLARE vcId INTEGER;
SET vcId = (SELECT Email_Id FROM UserHasEmail WHERE User_Id = pId);
RETURN vcId;
END$$

DELIMITER ;




=================================> USER HAS VEHICLE

USE `par`;
DROP function IF EXISTS `Control_UserHasVehicle_getUserHasVehicleUserId`;

DELIMITER $$
USE `par`$$
CREATE FUNCTION `Control_UserHasVehicle_getUserHasVehicleUserId` (pId INT)
RETURNS INTEGER
DETERMINISTIC
BEGIN
DECLARE vcId INTEGER;
SET vcId = (SELECT User_Id FROM UserHasEmail WHERE Vehicle_Id = pId);
RETURN vcId;
END$$

DELIMITER ;



/*///////////////////////////////*/


USE `par`;
DROP function IF EXISTS `Control_UserHasVehicle_getUserHasVehicleVehicleId`;

DELIMITER $$
USE `par`$$
CREATE FUNCTION `Control_UserHasVehicle_getUserHasVehicleVehicleId` (pId INT)
RETURNS INTEGER
DETERMINISTIC
BEGIN
DECLARE vcId INTEGER;
SET vcId = (SELECT Vehicle_Id FROM UserHasEmail WHERE User_Id = pId);
RETURN vcId;
END$$

DELIMITER ;


=================================> USER RESERVE PARKING


USE `par`;
DROP function IF EXISTS `Control_UserReserveParking_getUserReserveParkingParkingId`;

DELIMITER $$
USE `par`$$
CREATE FUNCTION `Control_UserReserveParking_getUserReserveParkingParkingId` (pId INT)
RETURNS INTEGER
DETERMINISTIC
BEGIN
DECLARE vcId INTEGER;
SET vcId = (SELECT Parking_Id FROM UserReserveParking WHERE User_Id = pId);
RETURN vcId;
END$$

DELIMITER ;



/*///////////////////////////////*/




USE `par`;
DROP function IF EXISTS `Control_UserReserveParking_getUserReserveParkingParkingId`;

DELIMITER $$
USE `par`$$
CREATE DEFINER=`root`@`localhost` FUNCTION `Control_UserReserveParking_getUserReserveParkingParkingId`(pId INT) RETURNS int
    DETERMINISTIC
BEGIN
DECLARE vcId INTEGER;
SET vcId = (SELECT Parking_Id FROM UserReserveParking WHERE User_Id = pId);
RETURN vcId;
END$$

DELIMITER ;


/*///////////////////////////////*/


USE `par`;
DROP function IF EXISTS `Control_UserReserveParking_getUserReserveParkingDescription`;

DELIMITER $$
USE `par`$$
CREATE FUNCTION `Control_UserReserveParking_getUserReserveParkingDescription` (pId INT )
RETURNS VARCHAR(150)
DETERMINISTIC
BEGIN
DECLARE vcDescription VARCHAR(150);
SET vcDescription = (SELECT description FROM UserReserveParking WHERE User_Id = pId);
RETURN vcDescription;
END$$

DELIMITER ;


/*///////////////////////////////*/


USE `par`;
DROP function IF EXISTS `Control_UserReserveParking_getUserReserveParkingDateTimeStart`;

DELIMITER $$
USE `par`$$
CREATE FUNCTION `Control_UserReserveParking_getUserReserveParkingDateTimeStart` (pId INT)
RETURNS DATETIME
DETERMINISTIC
BEGIN
DECLARE vcDate DATETIME;
SET vcDate = (SELECT DayTime_Start FROM UserReserveParking WHERE User_Id = pId);
RETURN vcDate;
END$$

DELIMITER ;




/*///////////////////////////////*/





USE `par`;
DROP function IF EXISTS `Control_UserReserveParking_getUserReserveParkingDateTimeFinal`;

DELIMITER $$
USE `par`$$
CREATE FUNCTION `Control_UserReserveParking_getUserReserveParkingDateTimeFinal` (pId INT)
RETURNS DATETIME
DETERMINISTIC
BEGIN
DECLARE vcDate DATETIME;
SET vcDate = (SELECT DayTime_Final FROM UserReserveParking WHERE User_Id = pId);
RETURN vcDate;
END$$

DELIMITER ;

