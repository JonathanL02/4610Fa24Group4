USE ns_4610Fa24Group4;

CREATE TABLE `ns_4610Fa24Group4`.`Rooms` (
  `roomNumber` VARCHAR(10) NOT NULL,
  `roomType` VARCHAR(45) NULL,
  `floor` VARCHAR(45) NULL,
  PRIMARY KEY (`roomNumber`));

CREATE TABLE `ns_4610Fa24Group4`.`Amenities` (
  `amenityID` VARCHAR(10) NOT NULL,
  `amenityType` VARCHAR(45) NULL,
  `roomNumber` VARCHAR(10) NOT NULL,
  PRIMARY KEY (`amenityID`, `roomNumber`),
  CONSTRAINT `fk_Amenities_Rooms1`
    FOREIGN KEY (`roomNumber`)
    REFERENCES `ns_4610Fa24Group4`.`Rooms` (`roomNumber`));

CREATE TABLE `ns_4610Fa24Group4`.`Equipment` (
  `equipmentID` VARCHAR(10) NOT NULL,
  `equipmentName` VARCHAR(45) NULL,
  `roomNumber` VARCHAR(10) NOT NULL,
  PRIMARY KEY (`equipmentID`, `roomNumber`),
  CONSTRAINT `fk_Equipment_Rooms1`
    FOREIGN KEY (`roomNumber`)
    REFERENCES `ns_4610Fa24Group4`.`Rooms` (`roomNumber`));

CREATE TABLE `ns_4610Fa24Group4`.`Memberships` (
  `membershipID` VARCHAR(10) NOT NULL,
  `membershipCost` INT NULL,
  `membershipType` VARCHAR(45) NULL,
  `frequency` VARCHAR(45) NULL,
  `membershipDescription` VARCHAR(45) NULL,
  PRIMARY KEY (`membershipID`));

CREATE TABLE `ns_4610Fa24Group4`.`Members` (
  `memberID` VARCHAR(10) NOT NULL,
  `memberFName` VARCHAR(45) NULL,
  `memberLName` VARCHAR(45) NULL,
  `dateOfBirth` DATE NULL,
  `phone` VARCHAR(45) NULL,
  `email` VARCHAR(45) NULL,
  `zipCode` VARCHAR(5) NULL,
  `membershipID` VARCHAR(10) NOT NULL,
  PRIMARY KEY (`memberID`, `membershipID`),
  CONSTRAINT `fk_Members_Memberships1`
    FOREIGN KEY (`membershipID`)
    REFERENCES `ns_4610Fa24Group4`.`Memberships` (`membershipID`));

CREATE TABLE `ns_4610Fa24Group4`.`Departments` (
  `departmentID` VARCHAR(10) NOT NULL,
  `departmentName` VARCHAR(45) NULL,
  `departmentExtension` VARCHAR(45) NULL,
  PRIMARY KEY (`departmentID`));

CREATE TABLE `ns_4610Fa24Group4`.`Employees` (
  `employeeID` VARCHAR(10) NOT NULL,
  `employeeFName` VARCHAR(45) NULL,
  `employeeLName` VARCHAR(45) NULL,
  `specialty` VARCHAR(45) NULL,
  `email` VARCHAR(45) NULL,
  `departmentID` VARCHAR(10) NOT NULL,
  `supervisorID` VARCHAR(10) NOT NULL,
  PRIMARY KEY (`employeeID`, `supervisorID`),
  CONSTRAINT `fk_Employees_Departments1`
    FOREIGN KEY (`departmentID`)
    REFERENCES `ns_4610Fa24Group4`.`Departments` (`departmentID`),
  CONSTRAINT `fk_Employees_Employees1`
    FOREIGN KEY (`supervisorID`)
    REFERENCES `ns_4610Fa24Group4`.`Employees` (`employeeID`));

CREATE TABLE `ns_4610Fa24Group4`.`Classes` (
  `classID` VARCHAR(10) NOT NULL,
  `className` VARCHAR(45) NULL,
  `description` VARCHAR(45) NULL,
  PRIMARY KEY (`classID`));

CREATE TABLE `ns_4610Fa24Group4`.`Sessions` (
  `sessionID` VARCHAR(10) NOT NULL,
  `duration` INT NULL,
  `capacity` INT NULL,
  `sessionDate` DATE NULL,
  `classID` VARCHAR(10) NOT NULL,
  `roomNumber` VARCHAR(10) NOT NULL,
  `employeeID` VARCHAR(10) NOT NULL,
  PRIMARY KEY (`sessionID`, `classID`, `employeeID`),
  CONSTRAINT `fk_Sessions_Classes1`
    FOREIGN KEY (`classID`)
    REFERENCES `ns_4610Fa24Group4`.`Classes` (`classID`),
  CONSTRAINT `fk_Sessions_Rooms1`
    FOREIGN KEY (`roomNumber`)
    REFERENCES `ns_4610Fa24Group4`.`Rooms` (`roomNumber`),
  CONSTRAINT `fk_Sessions_Employees1`
    FOREIGN KEY (`employeeID`)
    REFERENCES `ns_4610Fa24Group4`.`Employees` (`employeeID`));
    
    CREATE TABLE `ns_4610Fa24Group4`.`Members_Taking_Sessions` (
  `sessionID` VARCHAR(10) NOT NULL,
  `classID` VARCHAR(10) NOT NULL,
  `employeeID` VARCHAR(10) NOT NULL,
  `memberID` VARCHAR(10) NOT NULL,
  `membershipID` VARCHAR(10) NOT NULL,
  `completion` VARCHAR(45) NULL,
  `rating` INT NULL,
  PRIMARY KEY (`sessionID`, `classID`, `employeeID`, `memberID`, `membershipID`),
  CONSTRAINT `fk_Sessions_has_Members_Sessions1`
    FOREIGN KEY (`sessionID` , `classID` , `employeeID`)
    REFERENCES `ns_4610Fa24Group4`.`Sessions` (`sessionID` , `classID` , `employeeID`),
  CONSTRAINT `fk_Sessions_has_Members_Members1`
    FOREIGN KEY (`memberID` , `membershipID`)
    REFERENCES `ns_4610Fa24Group4`.`Members` (`memberID` , `membershipID`));