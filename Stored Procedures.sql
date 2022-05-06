====================CONTROL ==========================



============================================================> PARKING


/*==INSERT==*/
USE `par`;
DROP procedure IF EXISTS `Control_Parking_InsertParking`;

DELIMITER $$
USE `par`$$
CREATE PROCEDURE `Control_Parking_InsertParking` (In pName VARCHAR(50), IN pDescription VARCHAR(150), In pLocation VARCHAR(300), IN pSchedule VARCHAR(150))
BEGIN
DECLARE EXIT HANDLER FOR 1062 SELECT 'Duplicate keys error encountered.' Message;
DECLARE EXIT HANDLER FOR 1105 SELECT 'Unknown error encountered.' Message;
DECLARE EXIT HANDLER FOR 1176 SELECT 'Key does not exist.' Message;
DECLARE EXIT HANDLER FOR 1231 SELECT 'Variable cannot be set to that value.' Message;
DECLARE EXIT HANDLER FOR 1232 SELECT 'Incorrect argument type to variable.' Message;



INSERT INTO Parking(name, description, location, schedule)
VALUES(pName, pDescription, pLocation, pSchedule);
COMMIT;
END$$

DELIMITER ;

/*==Update==*/
USE `par`;
DROP procedure IF EXISTS `Control_Parking_UpdateParking`;

DELIMITER $$
USE `par`$$
CREATE PROCEDURE `Control_Parking_UpdateParking` (IN pId INt, IN pname VARCHAR(50), IN pDescription VARCHAR(150), IN pLocation VARCHAR(300), In pSchedule VARCHAR(150)    )
BEGIN
DECLARE EXIT HANDLER FOR 1062 SELECT 'Duplicate keys error encountered.' Message;
DECLARE EXIT HANDLER FOR 1105 SELECT 'Unknown error encountered.' Message;
DECLARE EXIT HANDLER FOR 1176 SELECT 'Key does not exist.' Message;
DECLARE EXIT HANDLER FOR 1231 SELECT 'Variable cannot be set to that value.' Message;
DECLARE EXIT HANDLER FOR 1232 SELECT 'Incorrect argument type to variable.' Message;

UPDATE Parking
SET name = pName,
	description = pDescription,
    location = pLocation,
    schedule = pSchedule
WHERE Parking_Id = pId;
COMMIT;
END$$

DELIMITER ;



/*==Parking==*/

USE `par`;
DROP procedure IF EXISTS `Control_Parking_RemoveParking`;

DELIMITER $$
USE `par`$$
CREATE PROCEDURE `Control_Parking_RemoveParking` (IN pId INT)
BEGIN
DECLARE EXIT HANDLER FOR 1062 SELECT 'Duplicate keys error encountered.' Message;
DECLARE EXIT HANDLER FOR 1105 SELECT 'Unknown error encountered.' Message;
DECLARE EXIT HANDLER FOR 1176 SELECT 'Key does not exist.' Message;
DECLARE EXIT HANDLER FOR 1231 SELECT 'Variable cannot be set to that value.' Message;
DECLARE EXIT HANDLER FOR 1232 SELECT 'Incorrect argument type to variable.' Message;

DELETE FROM Parking
WHERE Parking_Id = pId;
COMMIT;
END$$

DELIMITER ;


============================================================> EMAIL


/*==INSERT==*/


USE `par`;
DROP procedure IF EXISTS `Control_Email_InsertEmail`;

DELIMITER $$
USE `par`$$
CREATE PROCEDURE `Control_Email_InsertEmail` (IN pName VARCHAR(50) )
BEGIN
DECLARE EXIT HANDLER FOR 1062 SELECT 'Duplicate keys error encountered.' Message;
DECLARE EXIT HANDLER FOR 1105 SELECT 'Unknown error encountered.' Message;
DECLARE EXIT HANDLER FOR 1176 SELECT 'Key does not exist.' Message;
DECLARE EXIT HANDLER FOR 1231 SELECT 'Variable cannot be set to that value.' Message;
DECLARE EXIT HANDLER FOR 1232 SELECT 'Incorrect argument type to variable.' Message;

INSERT INTO Email(name)
VALUES(pName);
COMMIT;

END$$

DELIMITER ;



/*==UPDATE==*/



USE `par`;
DROP procedure IF EXISTS `Control_Email_UpdateEmail`;

DELIMITER $$
USE `par`$$
CREATE PROCEDURE `Control_Email_UpdateEmail` (IN pId INT, In pName VARCHAR(50))
BEGIN
DECLARE EXIT HANDLER FOR 1062 SELECT 'Duplicate keys error encountered.' Message;
DECLARE EXIT HANDLER FOR 1105 SELECT 'Unknown error encountered.' Message;
DECLARE EXIT HANDLER FOR 1176 SELECT 'Key does not exist.' Message;
DECLARE EXIT HANDLER FOR 1231 SELECT 'Variable cannot be set to that value.' Message;
DECLARE EXIT HANDLER FOR 1232 SELECT 'Incorrect argument type to variable.' Message;

UPDATE email
SET name = pName
WHERE Email_Id = pId;
COMMIT;

END$$

DELIMITER ;





/*==REMOVE==*/



USE `par`;
DROP procedure IF EXISTS `Control_Email_RemoveEmail`;

DELIMITER $$
USE `par`$$
CREATE PROCEDURE `Control_Email_RemoveEmail` (IN pId INT)
BEGIN
DECLARE EXIT HANDLER FOR 1062 SELECT 'Duplicate keys error encountered.' Message;
DECLARE EXIT HANDLER FOR 1105 SELECT 'Unknown error encountered.' Message;
DECLARE EXIT HANDLER FOR 1176 SELECT 'Key does not exist.' Message;
DECLARE EXIT HANDLER FOR 1231 SELECT 'Variable cannot be set to that value.' Message;
DECLARE EXIT HANDLER FOR 1232 SELECT 'Incorrect argument type to variable.' Message;

DELETE FROM Email
WHERE Email_Id = pId;
COMMIT;
END$$

DELIMITER ;














============================================================>> DEPARTMENT


/*==INSERT==*/


USE `par`;
DROP procedure IF EXISTS `Control_Department_InsertDepartment`;

DELIMITER $$
USE `par`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `Control_Department_InsertDepartment`(IN pName VARCHAR(50), In pDescription VARCHAR(100))
BEGIN
DECLARE EXIT HANDLER FOR 1062 SELECT 'Duplicate keys error encountered.' Message;
DECLARE EXIT HANDLER FOR 1105 SELECT 'Unknown error encountered.' Message;
DECLARE EXIT HANDLER FOR 1176 SELECT 'Key does not exist.' Message;
DECLARE EXIT HANDLER FOR 1231 SELECT 'Variable cannot be set to that value.' Message;
DECLARE EXIT HANDLER FOR 1232 SELECT 'Incorrect argument type to variable.' Message;


INSERT INTO Department(name, description)
VALUES(pName, pDescription);
COMMIT;
END$$

DELIMITER ;




/*==UPDATE==*/

USE `par`;
DROP procedure IF EXISTS `Control_Department_UpdateDepartment`;

DELIMITER $$
USE `par`$$
CREATE PROCEDURE `Control_Department_UpdateDepartment` (IN pId INT, IN pName VARCHAR(50), IN pDescription VARCHAR(100))
BEGIN
DECLARE EXIT HANDLER FOR 1062 SELECT 'Duplicate keys error encountered.' Message;
DECLARE EXIT HANDLER FOR 1105 SELECT 'Unknown error encountered.' Message;
DECLARE EXIT HANDLER FOR 1176 SELECT 'Key does not exist.' Message;
DECLARE EXIT HANDLER FOR 1231 SELECT 'Variable cannot be set to that value.' Message;
DECLARE EXIT HANDLER FOR 1232 SELECT 'Incorrect argument type to variable.' Message;


UPDATE Department
SET name = pName,
	description = pDescription
WHERE Department_Id = pId;
COMMIT;
END$$

DELIMITER ;




/*==REMOVE==*/


USE `par`;
DROP procedure IF EXISTS `Control_Department_RemoveDepartment`;

DELIMITER $$
USE `par`$$
CREATE PROCEDURE `Control_Department_RemoveDepartment` (In pId INT )
BEGIN
DECLARE EXIT HANDLER FOR 1062 SELECT 'Duplicate keys error encountered.' Message;
DECLARE EXIT HANDLER FOR 1105 SELECT 'Unknown error encountered.' Message;
DECLARE EXIT HANDLER FOR 1176 SELECT 'Key does not exist.' Message;
DECLARE EXIT HANDLER FOR 1231 SELECT 'Variable cannot be set to that value.' Message;
DECLARE EXIT HANDLER FOR 1232 SELECT 'Incorrect argument type to variable.' Message;

DELETE FROM Department
WHERE Department_Id = pId;
COMMIT;
END$$

DELIMITER ;

















============================================================> Phone

/*==INSERT==*/


USE `par`;
DROP procedure IF EXISTS `Control_Phone_InsertPhone`;

DELIMITER $$
USE `par`$$
CREATE PROCEDURE `Control_Phone_InsertPhone` (IN pNumber VARCHAR(50))
BEGIN
DECLARE EXIT HANDLER FOR 1062 SELECT 'Duplicate keys error encountered.' Message;
DECLARE EXIT HANDLER FOR 1105 SELECT 'Unknown error encountered.' Message;
DECLARE EXIT HANDLER FOR 1176 SELECT 'Key does not exist.' Message;
DECLARE EXIT HANDLER FOR 1231 SELECT 'Variable cannot be set to that value.' Message;
DECLARE EXIT HANDLER FOR 1232 SELECT 'Incorrect argument type to variable.' Message;


INSERT INTO Phone(number)
VALUES(pNumber);
COMMIT;
END$$

DELIMITER ;



/*==UPDATE==*/

USE `par`;
DROP procedure IF EXISTS `Control_Phone_UpdatePhone`;

DELIMITER $$
USE `par`$$
CREATE PROCEDURE `Control_Phone_UpdatePhone` (In pId INT, IN pNumber VARCHAR(50))
BEGIN
DECLARE EXIT HANDLER FOR 1062 SELECT 'Duplicate keys error encountered.' Message;
DECLARE EXIT HANDLER FOR 1105 SELECT 'Unknown error encountered.' Message;
DECLARE EXIT HANDLER FOR 1176 SELECT 'Key does not exist.' Message;
DECLARE EXIT HANDLER FOR 1231 SELECT 'Variable cannot be set to that value.' Message;
DECLARE EXIT HANDLER FOR 1232 SELECT 'Incorrect argument type to variable.' Message;

UPDATE phone
SET number = pNumber
WHERE Phone_Id = pId;
COMMIT;
END$$

DELIMITER ;

/*==REMOVE==*/

USE `par`;
DROP procedure IF EXISTS `Control_Phone_RemovePhone`;

DELIMITER $$
USE `par`$$
CREATE PROCEDURE `Control_Phone_RemovePhone` (IN pId INT)
BEGIN
DECLARE EXIT HANDLER FOR 1062 SELECT 'Duplicate keys error encountered.' Message;
DECLARE EXIT HANDLER FOR 1105 SELECT 'Unknown error encountered.' Message;
DECLARE EXIT HANDLER FOR 1176 SELECT 'Key does not exist.' Message;
DECLARE EXIT HANDLER FOR 1231 SELECT 'Variable cannot be set to that value.' Message;
DECLARE EXIT HANDLER FOR 1232 SELECT 'Incorrect argument type to variable.' Message;

DELETE FROM Phone
WHERE Phone_Id = pId;
COMMIT;
END$$

DELIMITER ;







============================================================> User

/*==INSERT==*/



USE `par`;
DROP procedure IF EXISTS `Control_User_InsertUser`;

DELIMITER $$
USE `par`$$
CREATE PROCEDURE `Control_User_InsertUser` (IN pFullName VARCHAR(100), IN pType VARCHAR(50), IN pDepartmentId INT, IN pPhoneId INT)
BEGIN
DECLARE EXIT HANDLER FOR 1062 SELECT 'Duplicate keys error encountered.' Message;
DECLARE EXIT HANDLER FOR 1105 SELECT 'Unknown error encountered.' Message;
DECLARE EXIT HANDLER FOR 1176 SELECT 'Key does not exist.' Message;
DECLARE EXIT HANDLER FOR 1231 SELECT 'Variable cannot be set to that value.' Message;
DECLARE EXIT HANDLER FOR 1232 SELECT 'Incorrect argument type to variable.' Message;

INSERT INTO User(fullname, type, department_id, phone_id)
VALUES(pFullName, pType, pDepartmentId, pPhoneId);
COMMIT;
END$$

DELIMITER ;



/*==UPDATE==*/
USE `par`;
DROP procedure IF EXISTS `Control_User_UpdateUser`;

DELIMITER $$
USE `par`$$
CREATE PROCEDURE `Control_User_UpdateUser` (In pId INt, IN pFullName VARCHAR(100), IN pType VARCHAR(50), IN pDepartment_Id INT, IN pPhone_Id INT)
BEGIN
DECLARE EXIT HANDLER FOR 1062 SELECT 'Duplicate keys error encountered.' Message;
DECLARE EXIT HANDLER FOR 1105 SELECT 'Unknown error encountered.' Message;
DECLARE EXIT HANDLER FOR 1176 SELECT 'Key does not exist.' Message;
DECLARE EXIT HANDLER FOR 1231 SELECT 'Variable cannot be set to that value.' Message;
DECLARE EXIT HANDLER FOR 1232 SELECT 'Incorrect argument type to variable.' Message;

UPDATE User
SET fullname = pFullName,
	type = pType,
    eepartment_Id = pDepartment_Id,
    phone_id = pPhone_Id
WHERE User_Id = pId;
COMMIT;
END$$

DELIMITER ;


/*==REMOVE==*/


USE `par`;
DROP procedure IF EXISTS `Control_User_RemoveUser`;

DELIMITER $$
USE `par`$$
CREATE PROCEDURE `Control_User_RemoveUser` (IN pId INT)
BEGIN
DECLARE EXIT HANDLER FOR 1062 SELECT 'Duplicate keys error encountered.' Message;
DECLARE EXIT HANDLER FOR 1105 SELECT 'Unknown error encountered.' Message;
DECLARE EXIT HANDLER FOR 1176 SELECT 'Key does not exist.' Message;
DECLARE EXIT HANDLER FOR 1231 SELECT 'Variable cannot be set to that value.' Message;
DECLARE EXIT HANDLER FOR 1232 SELECT 'Incorrect argument type to variable.' Message;

DELETE FROM User
WHERE User_Id = pId;
COMMIT;
END$$

DELIMITER ;









============================================================> UserHasEmail

/*==INSERT==*/

USE `par`;
DROP procedure IF EXISTS `Control_UserHasEmail_InsertUserHasEmail`;

DELIMITER $$
USE `par`$$
CREATE PROCEDURE `Control_UserHasEmail_InsertUserHasEmail` (IN pUserId INT, IN pEmailId INT)
BEGIN
DECLARE EXIT HANDLER FOR 1062 SELECT 'Duplicate keys error encountered.' Message;
DECLARE EXIT HANDLER FOR 1105 SELECT 'Unknown error encountered.' Message;
DECLARE EXIT HANDLER FOR 1176 SELECT 'Key does not exist.' Message;
DECLARE EXIT HANDLER FOR 1231 SELECT 'Variable cannot be set to that value.' Message;
DECLARE EXIT HANDLER FOR 1232 SELECT 'Incorrect argument type to variable.' Message;

INSERT INTO UserHasEmail(user_id, email_id)
VALUES(pUserId, pEmailId);
COMMIT;
END$$

DELIMITER ;


/*==UPDATE==*/

USE `par`;
DROP procedure IF EXISTS `Control_UserHasEmail_UpdateUserHasEmail`;

DELIMITER $$
USE `par`$$
CREATE PROCEDURE `Control_UserHasEmail_UpdateUserHasEmail` (In pId INT, IN pIdUser INT, IN pIdEmail INT )
BEGIN
DECLARE EXIT HANDLER FOR 1062 SELECT 'Duplicate keys error encountered.' Message;
DECLARE EXIT HANDLER FOR 1105 SELECT 'Unknown error encountered.' Message;
DECLARE EXIT HANDLER FOR 1176 SELECT 'Key does not exist.' Message;
DECLARE EXIT HANDLER FOR 1231 SELECT 'Variable cannot be set to that value.' Message;
DECLARE EXIT HANDLER FOR 1232 SELECT 'Incorrect argument type to variable.' Message;

UPDATE UserHasEmail
SET User_Id = pIdUser,
	Email_Id = pIdEmail
WHERE User_Id = pId;
COMMIT;
END$$

DELIMITER ;



/*==REMOVE==*/


USE `par`;
DROP procedure IF EXISTS `Control_UserHasEmail_RemoveUserHasEmail`;

DELIMITER $$
USE `par`$$
CREATE PROCEDURE `Control_UserHasEmail_RemoveUserHasEmail` (IN pId INT)
BEGIN
DECLARE EXIT HANDLER FOR 1062 SELECT 'Duplicate keys error encountered.' Message;
DECLARE EXIT HANDLER FOR 1105 SELECT 'Unknown error encountered.' Message;
DECLARE EXIT HANDLER FOR 1176 SELECT 'Key does not exist.' Message;
DECLARE EXIT HANDLER FOR 1231 SELECT 'Variable cannot be set to that value.' Message;
DECLARE EXIT HANDLER FOR 1232 SELECT 'Incorrect argument type to variable.' Message;

DELETE FROM UserHasEmail
WHERE User_Id = pId;
COMMIT;
END$$

DELIMITER ;



============================================================> UserHasVehicle

/*==INSERT==*/

USE `par`;
DROP procedure IF EXISTS `Control_UserHasVehicle_InsertUserHasVehicle`;

DELIMITER $$
USE `par`$$
CREATE PROCEDURE `Control_UserHasVehicle_InsertUserHasVehicle` (IN pUserId INT, IN pVehicleId INT)
BEGIN
DECLARE EXIT HANDLER FOR 1062 SELECT 'Duplicate keys error encountered.' Message;
DECLARE EXIT HANDLER FOR 1105 SELECT 'Unknown error encountered.' Message;
DECLARE EXIT HANDLER FOR 1176 SELECT 'Key does not exist.' Message;
DECLARE EXIT HANDLER FOR 1231 SELECT 'Variable cannot be set to that value.' Message;
DECLARE EXIT HANDLER FOR 1232 SELECT 'Incorrect argument type to variable.' Message;


INSERT INTO UserHasVehicle(User_id, Vehicle_id)
VALUES(pUserId,pVehicleId );
COMMIT;
END$$

DELIMITER ;



/*==UPDATE==*/

USE `par`;
DROP procedure IF EXISTS `Control_UserhasVehicle_UpdateUserHasVehicle`;

DELIMITER $$
USE `par`$$
CREATE PROCEDURE `Control_UserhasVehicle_UpdateUserHasVehicle` (IN pId INT, IN pIdUser INT, IN pIdVehicle INT )
BEGIN
DECLARE EXIT HANDLER FOR 1062 SELECT 'Duplicate keys error encountered.' Message;
DECLARE EXIT HANDLER FOR 1105 SELECT 'Unknown error encountered.' Message;
DECLARE EXIT HANDLER FOR 1176 SELECT 'Key does not exist.' Message;
DECLARE EXIT HANDLER FOR 1231 SELECT 'Variable cannot be set to that value.' Message;
DECLARE EXIT HANDLER FOR 1232 SELECT 'Incorrect argument type to variable.' Message;

UPDATE UserHasVehicle
SET User_Id = pIdUser,
	Vehicle_Id = pIdVehicle
WHERE User_Id = pId;
COMMIT;
END$$

DELIMITER ;


/*==REMOVE==*/

USE `par`;
DROP procedure IF EXISTS `Control_UserHasVehicle_RemoveUserHasVehicle`;

DELIMITER $$
USE `par`$$
CREATE PROCEDURE `Control_UserHasVehicle_RemoveUserHasVehicle` (IN pId INT)
BEGIN
DECLARE EXIT HANDLER FOR 1062 SELECT 'Duplicate keys error encountered.' Message;
DECLARE EXIT HANDLER FOR 1105 SELECT 'Unknown error encountered.' Message;
DECLARE EXIT HANDLER FOR 1176 SELECT 'Key does not exist.' Message;
DECLARE EXIT HANDLER FOR 1231 SELECT 'Variable cannot be set to that value.' Message;
DECLARE EXIT HANDLER FOR 1232 SELECT 'Incorrect argument type to variable.' Message;

DELETE FROM UserHasVehicle
WHERE User_Id = pId;
COMMIT;
END$$

DELIMITER ;








============================================================> UserReserveParking

/*==INSERT==*/

USE `par`;
DROP procedure IF EXISTS `Control_UserReserveParking_InsertUserReserveParking`;

DELIMITER $$
USE `par`$$
CREATE PROCEDURE `Control_UserReserveParking_InsertUserReserveParking` (IN pUserId INT, IN pParkingId INT)
BEGIN
DECLARE EXIT HANDLER FOR 1062 SELECT 'Duplicate keys error encountered.' Message;
DECLARE EXIT HANDLER FOR 1105 SELECT 'Unknown error encountered.' Message;
DECLARE EXIT HANDLER FOR 1176 SELECT 'Key does not exist.' Message;
DECLARE EXIT HANDLER FOR 1231 SELECT 'Variable cannot be set to that value.' Message;
DECLARE EXIT HANDLER FOR 1232 SELECT 'Incorrect argument type to variable.' Message;


INSERT INTO UserReserveParking(User_id, Parking_id)
VALUES(pUserId,pParkingId );
COMMIT;
END$$

DELIMITER ;


/*==UPDATE==*/
USE `par`;
DROP procedure IF EXISTS `Control_UserReserveParking_UpdateUserReserveParking`;

DELIMITER $$
USE `par`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `Control_UserReserveParking_UpdateUserReserveParking`(IN pId INT, IN pIdUser INT, IN pIdParking INT, IN pDescription VARCHAR(150), IN pDateTimeStart DATETIME, IN pDateTimeFinal DATETIME)
BEGIN
DECLARE EXIT HANDLER FOR 1062 SELECT 'Duplicate keys error encountered.' Message;
DECLARE EXIT HANDLER FOR 1105 SELECT 'Unknown error encountered.' Message;
DECLARE EXIT HANDLER FOR 1176 SELECT 'Key does not exist.' Message;
DECLARE EXIT HANDLER FOR 1231 SELECT 'Variable cannot be set to that value.' Message;
DECLARE EXIT HANDLER FOR 1232 SELECT 'Incorrect argument type to variable.' Message;

UPDATE UserReserveParking
SET User_Id = pIdUser,
	Parking_Id = pIdParking,
    description = pDescription,
    DayTime_Start = pDateTimeStart,
    DayTime_Final = pDateTimeFinal
WHERE User_Id = pId;
COMMIT;
END$$

DELIMITER ;




/*==REMOVE==*/


USE `par`;
DROP procedure IF EXISTS `Control_UserReserveParking_RemoveUserReserveParking`;

DELIMITER $$
USE `par`$$
CREATE PROCEDURE `Control_UserReserveParking_RemoveUserReserveParking` (IN pId INT)
BEGIN
DECLARE EXIT HANDLER FOR 1062 SELECT 'Duplicate keys error encountered.' Message;
DECLARE EXIT HANDLER FOR 1105 SELECT 'Unknown error encountered.' Message;
DECLARE EXIT HANDLER FOR 1176 SELECT 'Key does not exist.' Message;
DECLARE EXIT HANDLER FOR 1231 SELECT 'Variable cannot be set to that value.' Message;
DECLARE EXIT HANDLER FOR 1232 SELECT 'Incorrect argument type to variable.' Message;

DELETE FROM UserReserveParking
WHERE User_Id = pId;
COMMIT;
END$$

DELIMITER ;





============================================================> Vehicle

/*==INSERT==*/

USE `par`;
DROP procedure IF EXISTS `Control_Vehicle_InsertVehicle`;

DELIMITER $$
USE `par`$$
CREATE PROCEDURE `Control_Vehicle_InsertVehicle` (IN pBrand VARCHAR(50), IN pSeries VARCHAR(50))
BEGIN
DECLARE EXIT HANDLER FOR 1062 SELECT 'Duplicate keys error encountered.' Message;
DECLARE EXIT HANDLER FOR 1105 SELECT 'Unknown error encountered.' Message;
DECLARE EXIT HANDLER FOR 1176 SELECT 'Key does not exist.' Message;
DECLARE EXIT HANDLER FOR 1231 SELECT 'Variable cannot be set to that value.' Message;
DECLARE EXIT HANDLER FOR 1232 SELECT 'Incorrect argument type to variable.' Message;


INSERT INTO Vehicle(Brand, Series)
VALUES(pBrand,pSeries);
COMMIT;
END$$



/*==UPDATE==*/

DELIMITER ;

USE `par`;
DROP procedure IF EXISTS `Control_Vehicle_UpdateVehicle`;

DELIMITER $$
USE `par`$$
CREATE PROCEDURE `Control_Vehicle_UpdateVehicle` (IN pId INT, IN pBrand VARCHAR(50), IN pSeries VARCHAR(50) )
BEGIN
DECLARE EXIT HANDLER FOR 1062 SELECT 'Duplicate keys error encountered.' Message;
DECLARE EXIT HANDLER FOR 1105 SELECT 'Unknown error encountered.' Message;
DECLARE EXIT HANDLER FOR 1176 SELECT 'Key does not exist.' Message;
DECLARE EXIT HANDLER FOR 1231 SELECT 'Variable cannot be set to that value.' Message;
DECLARE EXIT HANDLER FOR 1232 SELECT 'Incorrect argument type to variable.' Message;

UPDATE Vehicle
SET Brand = pBrand,
	Series = pSeries
WHERE Vehicle_Id = pId;
COMMIT;

END$$

DELIMITER ;


/*==REMOVE==*/

USE `par`;
DROP procedure IF EXISTS `Control_Vehicle_RemoveVehicle`;

DELIMITER $$
USE `par`$$
CREATE PROCEDURE `Control_Vehicle_RemoveVehicle` (IN pId INT)
BEGIN
DECLARE EXIT HANDLER FOR 1062 SELECT 'Duplicate keys error encountered.' Message;
DECLARE EXIT HANDLER FOR 1105 SELECT 'Unknown error encountered.' Message;
DECLARE EXIT HANDLER FOR 1176 SELECT 'Key does not exist.' Message;
DECLARE EXIT HANDLER FOR 1231 SELECT 'Variable cannot be set to that value.' Message;
DECLARE EXIT HANDLER FOR 1232 SELECT 'Incorrect argument type to variable.' Message;

DELETE FROM Vehicle
WHERE Vehilce_Id = pId;
COMMIT;
END$$

DELIMITER ;




