Create DataBase TM



Go

use TM
Create Table Manage (
ID int not null,
Email varchar(50) not null
Primary Key(ID),

);

create table Companie(
CRNNO int primary key,
compaineName varchar(50) not null

);

Create Table Projec(
PRJNO int Primary key,
Title varchar(50),
ManageID int foreign key references Manage(ID) not null,
startDate datetime2 not  null,
CRNNO int not null,
foreign key (CRNNO) references  Companie(CRNNO)

);

create table Technology(
id int not null,
Name varchar(50) not null,
Primary Key(ID)
);

Create table ProjectTechnology(
PRJNO int foreign key references  Projec(PRJNO)  not null,
TechnoID int foreign key references Technology(Id) not null
primary key(PRJNO,TechnoID)
);

use TS

create table employe(
Emp_ID int primary key,
last_Name varchar(50) not null,
);
Create table employ(

EmployeeID int PRIMARY KEY,

LastName nvarchar(25), 

FirstName nvarchar(25)

);

GO



INSERT INTO dbo.Employ

(EmployeeID, LastName, FirstName)

VALUES 

(121, N'O''Neil', N'Carlene');
