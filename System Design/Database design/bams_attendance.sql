-- CREATE database bams_attendance;
-- use bams_attendance;

-- TABLE Student
CREATE table bams_student (
	studentReg_no VARCHAR(30) PRIMARY KEY NOT NULL,
	studentFname VARCHAR(30) not null,
	studentLname VARCHAR(30) not null,
	studentTelNo VARCHAR(12) UNIQUE not null,
	studentEmail VARCHAR(50) UNIQUE not null,
	studentDoB date,
    studentGender CHAR
);

-- TABLE Lecturer
CREATE table bams_lecture (
	lectID VARCHAR(25) PRIMARY KEY NOT NULL,
    lectFname VARCHAR(30) not null,
    lectLname VARCHAR(30) not null,
    lectTelNo VARCHAR(12) UNIQUE not null,
    lectEmail VARCHAR(50) UNIQUE not null,
    lectDOB DATE,
    lectGender CHAR
);

-- TABLE Subject
CREATE table bams_subject (
	subCode VARCHAR(10) PRIMARY KEY NOT NULL,
    subName VARCHAR(20) Not null
);

-- TABLE Schedule
CREATE table bams_class_schedule (
	class_schedID INT primary key not null,
    timeStart time not null,
    timeEnd time not null,
    schedule_day VARCHAR(10)
);

-- TABLE Class
CREATE table bams_classInfo (
	classID VARCHAR(10) PRIMARY KEY NOT NULL
);

-- TABLE Fingerprint
CREATE table bams_fingerprint (
	stud_FPID int primary key not null,
    fingerprintRec VARCHAR(50) NOT NULL
);

-- TABLE Student Attendance
CREATE table bams_student_attendance (
	stud_attendanceID int primary key not null,
    attendanceStatus VARCHAR(10) not null,
    attendanceDate DATE not null
);

-- TABLE Lecturer Attendance
CREATE table bams_lecturer_attendance (
	lect_attendanceID int primary key not null,
    attendanceStatus VARCHAR(10) not null,
    attendanceDate DATE not null
);

