select * from [dbo].[Book];
select * from [dbo].[Report];
select * from [dbo].[Student];
select * from [dbo].[transaction];
select * from [dbo].[user];

/* two insert */
insert into Book (bookid,Booktitle,Author,Publisher,PublisherDate) values
(1221777,'Just Add Magic','Cindy','AmazonPrime','2010-05-23');

insert into [transaction] (transactionID,transactionName,transactiondate,borrowid,Bookid)
values (4444,'Fourth Trasaction','1995-06-19',10004,1221777)

/* two update */
update student set studentname = 'jessie' where studentID=10002

update [user] set email= 'albert.w@gmail.com' where userid=3

/* delete  */
delete from [transaction] where transactionID=4444

/* simple select */

select * from [transaction]

/* joins*/
select b.* from book b left join [user] u on b.bookid= u.bookid 

select t.* from report r right join [transaction] t on r.transactionid= t.transactionid

/* summary statements*/

select max(transactionid) from [transaction] 

select min(reportID) from report

select count(userid) from [user]

/*multi table query*/

select * from book where bookid not in (select bookid from [transaction])