create table Student(
	ID serial PRIMARY KEY NOT NULL,
	FirstName varchar(15) NOT NULL,
	LastName varchar(15) NOT NULL,
	DateOfBirth date NOT NULL,
	EnrolledDate timestamp DEFAULT NOW(),
	Gender varchar(10) check (gender in ('Female', 'Male')),
	NationalIDNumber varchar(10),
	StudentCardNumber varchar(5)	
)

drop table Student

create table Teacher(
	ID serial PRIMARY KEY NOT NULL,
	FirstName varchar(15) NOT NULL,
	LastName varchar(15) NOT NULL,
	DateOfBirth date NULL,
	AcademicRank varchar(10) NULL,
	HireDate date NOT NULL
)

select * from Teacher

create table GradeDetails(
	ID serial PRIMARY KEY NOT NULL,
	GradeID integer NOT NULL,
	AchievementTypeID integer NOT NULL,
	AchievementPoints integer NOT NULL,
	AchievementMaxPoints integer NOT NULL,
	AchievementDate date
)

create table Course(
	ID serial PRIMARY KEY,
	Name varchar(10) NOT NULL,
	Credit integer NOT NUll,
	AcademicYear integer NOT NULL,
	Semester integer NOT NUll
)

create table Grade(
	ID serial PRIMARY KEY NOT NULL,
	studentID integer NOT NULL,
	CourseID integer NOT NULL,
	TeacherID integer NOT NULL,
	Grade smallint,
	Comment varchar(100),
	CreatedDate timestamp DEFAULT NOW()
)

create table AchievementType(
	ID serial PRIMARY KEY NOT NULL,
	Name varchar(20),
	Description varchar(100),
	ParticipationRate integer NULL
)