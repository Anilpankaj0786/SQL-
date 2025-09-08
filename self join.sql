CREATE TABLE Departments (
    DepartmentID INT PRIMARY KEY,
    DepartmentName VARCHAR(50)
);

-- Create Students table
CREATE TABLE Students (
    StudentID INT PRIMARY KEY,
    StudentName VARCHAR(100),
    Age INT,
    DepartmentID INT,
    FOREIGN KEY (DepartmentID) REFERENCES Departments(DepartmentID)
);

INSERT INTO Departments (DepartmentID, DepartmentName)
VALUES
    (1, 'Computer Science'),
    (2, 'Mathematics'),
    (3, 'Physics');
   
   
   
INSERT INTO Students (StudentID, StudentName, Age, DepartmentID)
VALUES
    (101, 'Alice', 20, 1),
    (102, 'Bob', 21, 2),
    (103, 'Charlie', 22, 1),
    (104, 'Diana', 23, 3),
    (105, 'Evan', 20, NULL); -- Evan has no department assigned
    
    
    
       
select * from Students;
select * from Departments;

select s.studentid, s.studentname,  d.departmentname
from students as s join departments as d
  where s.departmentid = d.departmentid;
  
  
  CREATE TABLE employee81 (
	eID INT,
    eName VARCHAR(100),
    manager  INT);
INSERT INTO employee81 values (10, "yash", null),(11, "aman", 12),(12, "naina",10),(13, "happy singh",11);

select e.eid ,e.ename,e.managerid, mgr.ename from employee81 AS e join employee81 as mgr where e.managerid = mgr.eid;



CREATE TABLE Courses (
    CourseID INT PRIMARY KEY,
    CourseName VARCHAR(100),
    PrerequisiteCourseID INT,
    FOREIGN KEY (PrerequisiteCourseID) REFERENCES Courses(CourseID)
);

INSERT INTO Courses (CourseID, CourseName, PrerequisiteCourseID)
VALUES
    (1, 'Intro to Programming', NULL),
    (2, 'Data Structures', 1),
    (3, 'Algorithms', 2),
    (4, 'Databases', 1),
    (5, 'Advanced Databases', 4),
    (6, 'Computer Networks', NULL),
    (7, 'Operating Systems', 2),
    (8, 'Computer Architecture', 1),
    (9, 'Machine Learning', 3),
    (10, 'Artificial Intelligence', 3),
    (11, 'Deep Learning', 9),
    (12, 'Compiler Design', 7),
    (13, 'Cloud Computing', 6),
    (14, 'Cybersecurity Fundamentals', 6),
    (15, 'Blockchain Technology', 14);
    
select c.courseid ,c.coursename , c.PrerequisiteCourseID , cr.courseid from courses as c join courses as cr
where c.PrerequisiteCourseID=cr.courseid;
  
  
  