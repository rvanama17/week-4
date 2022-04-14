create table [user] (
userID int not null primary key,
UserName varchar(50),
Gender varchar(50),
Email varchar(50),
ContactAddress varchar(50),
BookID int,
constraint FK_BookID foreign key (BookID)
references Book(BookId)
)


insert into [user] (UserID,UserName,Gender,Email,ContactAddress,BookID) values 
(0001,'Micheal','M','micheal.a@gmail.com','santiago',1221222),
(0002,'Alena','F','alena.r@gmail.com','california',1221333),
(0003,'Albert','M','albert.s@gmail.com','virginia',1221555)
