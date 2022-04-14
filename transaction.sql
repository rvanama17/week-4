create table [transaction](
TransactionID int not null primary key,
TransactionName varchar(50),
TransactionDate date,
BorrowID varchar(50),
BookID int,
constraint FK_TranBookID foreign key (BookID)
references Book(BookID)
)

insert into [transaction] (TransactionID,TransactionName,BorrowID,BookID,TransactionDate) values
(11111,'First Transaction',10001,1221222,'1990-01-25'),
(22222,'Second Trasaction',10002,1221333,'1985-11-20'),
(3333,'Third Trasaction',10003,1221555,'1985-11-20')


select * from book