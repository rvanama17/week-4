create table Book (
BookId int not null primary key,
BookTitle varchar(50),
Author varchar(50),
Publisher varchar(50),
PublisherDate date
)

BULK INSERT dbo.Book
FROM 'E:\s userdata\week3\database\v\book.csv'
with(
FORMAT='CSV',
FIRSTROW=2,
DATAFILETYPE='char',
FIELDQUOTE='"',
FIELDTERMINATOR=',',
ROWTERMINATOR='\n'
)
GO

insert into book (BookID,BookTitle,Author,Publisher,PublisherDate) values
(1221222,'Harry Potter','J.K.Rowling','J.J publishers','1990-01-25'),
(1221333,'Two states','chetan Bhagath','M.M publishers','1985-11-20'),
(1221555,'Twilight saga','Mamatha','S & S publishers','2000-12-12')
