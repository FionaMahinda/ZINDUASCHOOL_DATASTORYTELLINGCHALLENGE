	create database school;
    CREATE TABLE Students (
    StudentID INT PRIMARY KEY,
    FirstName VARCHAR(100) NOT NULL,
    LastName VARCHAR(100),
    Age INT CHECK (Age >= 18),
    Email VARCHAR(255) NOT NULL UNIQUE
);

INSERT INTO Students (StudentID, FirstName, LastName, Age, Email)
VALUES
(1, 'John', 'Doe', 20, 'john.doe@example.com'),
(2, 'Jane', 'Smith', 22, 'jane.smith@example.com'),
(3, 'Michael', 'Brown', 19, 'michael.brown@example.com')
;
#adding enrollment date
ALTER TABLE Students
ADD EnrollmentDate DATE;

#modifying email
ALTER TABLE Students
DROP COLUMN LastName;

#dropping LastNmae
ALTER TABLE Students
DROP COLUMN LastName;







    