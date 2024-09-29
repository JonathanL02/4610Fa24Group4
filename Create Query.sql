USE ns_4610Fa24Group4;

CREATE TABLE `ns_4610Fa24Group4`.`Departments` (
  `departmentID` VARCHAR(10),
  `departmentName` VARCHAR(45),
  PRIMARY KEY (`departmentID`));

CREATE TABLE `ns_4610Fa24Group4`.`Employees` (
  `employeeID` VARCHAR(10),
  `firstName` VARCHAR(45),
  `lastName` VARCHAR(45),
  `specialty` VARCHAR(45),
  `departmentID` VARCHAR(10),
  PRIMARY KEY (`employeeID`, `departmentID`),
  CONSTRAINT `fk_Employees_Departments1`
    FOREIGN KEY (`departmentID`)
    REFERENCES `ns_4610Fa24Group4`.`Departments` (`departmentID`));

CREATE TABLE `ns_4610Fa24Group4`.`Sessions` (
  `sessionID` VARCHAR(10),
  `duration` INT,
  `attendance` INT,
  `sessionDate` DATE,
  `employeeID` VARCHAR(10),
  `departmentID` VARCHAR(10),
  `classID` VARCHAR(10),
  PRIMARY KEY (`sessionID`, `employeeID`, `departmentID`, `classID`),
  CONSTRAINT `fk_Sessions_Employees1`
    FOREIGN KEY (`employeeID` , `departmentID`)
    REFERENCES `ns_4610Fa24Group4`.`Employees` (`employeeID` , `departmentID`),
  CONSTRAINT `fk_Sessions_Classes1`
    FOREIGN KEY (`classID`)
    REFERENCES `ns_4610Fa24Group4`.`Classes` (`classID`));

CREATE TABLE `ns_4610Fa24Group4`.`Classes` (
  `classID` VARCHAR(10),
  `className` VARCHAR(45),
  `roomNumber` VARCHAR(10),
  PRIMARY KEY (`classID`),
  CONSTRAINT `fk_Classes_Rooms1`
    FOREIGN KEY (`roomNumber`)
    REFERENCES `ns_4610Fa24Group4`.`Rooms` (`roomNumber`));

CREATE TABLE `ns_4610Fa24Group4`.`Rooms` (
  `roomNumber` VARCHAR(10),
  `roomType` VARCHAR(45),
  `floor` VARCHAR(45),
  PRIMARY KEY (`roomNumber`));

CREATE TABLE `ns_4610Fa24Group4`.`Amenities` (
  `amenityID` INT,
  `amenityType` VARCHAR(45),
  `roomNumber` VARCHAR(10),
  PRIMARY KEY (`amenityID`, `roomNumber`),
  CONSTRAINT `fk_Amenities_Rooms1`
    FOREIGN KEY (`roomNumber`)
    REFERENCES `ns_4610Fa24Group4`.`Rooms` (`roomNumber`));

CREATE TABLE `ns_4610Fa24Group4`.`Equipment` (
  `equipmentID` VARCHAR(10),
  `equipmentName` VARCHAR(45),
  `roomNumber` VARCHAR(10),
  PRIMARY KEY (`equipmentID`, `roomNumber`),
  CONSTRAINT `fk_Equipment_Rooms1`
    FOREIGN KEY (`roomNumber`)
    REFERENCES `ns_4610Fa24Group4`.`Rooms` (`roomNumber`));

CREATE TABLE `ns_4610Fa24Group4`.`Memberships` (
  `membershipID` VARCHAR(10),
  `membershipCost` INT,
  `membershipType` VARCHAR(45),
  `frequency` VARCHAR(45),
  `membershipDescription` VARCHAR(45),
  PRIMARY KEY (`membershipID`));

CREATE TABLE `ns_4610Fa24Group4`.`Members` (
  `memberID` VARCHAR(10),
  `memberFName` VARCHAR(45),
  `memberLName` VARCHAR(45),
  `dateOfBirth` DATE,
  `membershipID` VARCHAR(10),
  PRIMARY KEY (`memberID`, `membershipID`),
  CONSTRAINT `fk_Guests_Memberships1`
    FOREIGN KEY (`membershipID`)
    REFERENCES `ns_4610Fa24Group4`.`Memberships` (`membershipID`));

CREATE TABLE `ns_4610Fa24Group4`.`Members_Taking_Sessions` (
  `sessionID` VARCHAR(10),
  `classID` VARCHAR(10),
  `roomNumber` VARCHAR(10),
  `employeeID` VARCHAR(10),
  `departmentID` VARCHAR(10),
  `memberID` VARCHAR(10),
  `membershipID` VARCHAR(10),
  PRIMARY KEY (`sessionID`, `classID`, `roomNumber`, `employeeID`, `departmentID`, `memberID`, `membershipID`),
  CONSTRAINT `fk_Sessions_has_Members_Sessions1`
    FOREIGN KEY (`sessionID` , `employeeID` , `departmentID`)
    REFERENCES `ns_4610Fa24Group4`.`Sessions` (`sessionID` , `employeeID` , `departmentID`),
  CONSTRAINT `fk_Sessions_has_Members_Members1`
    FOREIGN KEY (`memberID` , `membershipID`)
    REFERENCES `ns_4610Fa24Group4`.`Members` (`memberID` , `membershipID`));