create table Student 
(
StudentID int not null primary key,
StudentName varchar(50),
StudentGender varchar(50),
StudentEmail varchar(50),
StudentAddress varchar(50),
userID int,
constraint FK_UserID foreign key (UserID)
references [user](UserID)
)

insert into Student (StudentID,StudentName,StudentGender,StudentEmail,StudentAddress,userid) values
(10001,'simon','M','simon.student@gmail.com','Illinois',0001),
(10002,'williams','M','williams.henry@gmail.com','canberra',0002),
(10003,'Rose','F','rose.mary@gmail.com','Texas',0003)
