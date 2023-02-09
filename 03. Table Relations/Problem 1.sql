CREATE TABLE Passports (
PassportID INT IDENTITY(101,1) NOT NULL,
PassportNumber VARCHAR(8) NOT NULL,
CONSTRAINT PK_Passports PRIMARY KEY (PassportID)
)

CREATE TABLE Persons(
PersonID INT IDENTITY NOT NULL,
FirstName VARCHAR(MAX)NOT NULL,
Salary DECIMAL(8,2) NOT NULL,
PassportID INT FOREIGN KEY REFERENCES Passports(PassportID) UNIQUE NOT NULL,
CONSTRAINT PK_Persons PRIMARY KEY (PersonID)
)
INSERT INTO Passports(PassportNumber)
VALUES
      ('N34FG21B'),
      ('K65LO4R7'),
      ('ZE657QP2')

INSERT INTO Persons(FirstName,Salary,PassportID)
VALUES
      ('Roberto',43300.00,102)
	 ,('Tom',56100.00,103)
	 ,('Yana',60200.00,101)

--ALTER TABLE Persons
--ADD CONSTRAINT FK_Persons_Passports FOREIGN KEY(PassportID)
--REFERENCES Passports(PassportID)
--GO

