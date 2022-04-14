create table Report(
reportID int not null primary key,
ReportDate date,
TransactionID int,
UserID int,
constraint FK_TranReportID foreign key (TransactionID)
references [Transaction](TransactionID),
constraint FK_TranUserID foreign key (UserID)
references [User](UserID)
)


insert into Report (ReportID,TransactionID,UserID,ReportDate) values
(101010,11111,1,'1990-01-25'),
(202020,22222,2,'1990-01-25'),
(303030,3333,3,'1990-01-25')


select * from [user]