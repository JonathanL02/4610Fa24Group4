INSERT INTO Departments VALUES 
("IY0VLT2XU9","Front Desk"),
("NORCE6T8DV","Sanitation"),
("JANDVXM7HV", "Recreational Sports"),
("XJX5FU3I96", "Weightlifting"),
("FFOHTJ0MJP", "Cardio"),
("R6IPVLY4ML","Swimming"),
("X901IJRV4A","Yoga"),
("DSM6S4UDJT","Cycling"),
("L7KKC7O0T5","Boxing"),
("ICTQZAWUBG","Amenities");

INSERT INTO Employees VALUES
('30SS6BZE9N', 'John', 'Davis', 'Front Desk', 'IY0VLT2XU9'),
('K1K1HL3USN', 'David', 'Taylor', 'Sanitation', 'NORCE6T8DV'),
('4IR8O3WEEX', 'James', 'Williams', 'Recreational Sports', 'JANDVXM7HV'),
('2X2PUR55ND', 'James', 'Wilson', 'Weightlifting', 'XJX5FU3I96'),
('WLLZ854AKO', 'Emily', 'Davis', 'Cardio', 'FFOHTJ0MJP'),
('JDWE419O1P', 'Daniel', 'Davis', 'Swimming', 'R6IPVLY4ML'),
('F9XMEHQO2H', 'David', 'Miller', 'Yoga', 'X901IJRV4A'),
('L7VJ9NAC1D', 'David', 'Williams', 'Cycling', 'DSM6S4UDJT'),
('02ZCTK60AU', 'John', 'Johnson', 'Boxing', 'L7KKC7O0T5'),
('S66F732BVC', 'John', 'Davis', 'Amenities', 'ICTQZAWUBG');

INSERT INTO Rooms VALUES
("123", "Studio", "1"),
("321", "Open Gym", "3"),
("213", "Cycling", "2"),
("125", "Spa", "1"),
("126", "Massage", "1"),
("127", "Pool", "1");

INSERT INTO Amenities VALUES
("1", "Spa", "123"),
("2", "Massage", "126"),
("3", "Pool", "127");

INSERT INTO Equipment VALUES
("13252", "Treadmill 1", "321"),
("13253", "Treadmill 2", "321"),
("14234", "Bench 1", "123");

INSERT INTO Memberships VALUES
("9873","9.99","Basic","Monthly","Basic membership, no ammenities, 1 class"),
("9874","14.99","Basic Plus","Monthly","Basic membership, some amenities, 2 classes"),
("9875","16.99","Premium Minus","Monthly","Premium membership, 3 classes per week"),
("9876","19.99","Premium","Monthly or Yearly","Premium membership, unlimited classes");

INSERT INTO Members VALUES
("AB12CD34EF", "Sarah", "Robinson", "1990-05-12", "9873"),
("GH56IJ78KL", "Michael", "Adams", "1985-11-23", "9874"),
("MN90OP12QR", "Emma", "Brooks", "1993-07-30", "9875"),
("ST34UV56WX", "James", "Carter", "1988-03-15", "9876"),
("MG9866FJSX", "Jacob", "White", "2000-01-01", "9876");

INSERT INTO Classes Values
("CLS1001", "Spin Class", "213"),
("CLS1002", "Yoga and Stretch", "123"),
("CLS1003", "Strength Training", "321");

INSERT INTO Sessions VALUES
("SESS10011", "50", "50", "2024-09-21", "L7VJ9NAC1D", "DSM6S4UDJT", "CLS1001"),
("SESS10021", "25", "20", "2024-09-21", "F9XMEHQO2H", "X901IJRV4A", "CLS1002"),
("SESS10031", "60", "15", "2024-09-21", "2X2PUR55ND", "XJX5FU3I96", "CLS1003");

INSERT INTO Members_Taking_Sessions VALUES
("SESS10011", "CLS1001", "213", "L7VJ9NAC1D", "DSM6S4UDJT", "AB12CD34EF", "9873"),
("SESS10011", "CLS1001", "213", "L7VJ9NAC1D", "DSM6S4UDJT", "GH56IJ78KL", "9874"),
("SESS10021", "CLS1002", "123", "F9XMEHQO2H", "X901IJRV4A", "MN90OP12QR", "9875"),
("SESS10031", "CLS1003", "321", "2X2PUR55ND", "XJX5FU3I96", "ST34UV56WX", "9876");