create database task4;
use task4;

Create table If Not Exists Person (Id int, Email varchar(255));
Truncate table Person;
insert into Person (Id, Email) values ('1', 'a@b.com');
insert into Person (Id, Email) values ('2', 'c@d.com');
insert into Person (Id, Email) values ('3', 'a@b.com');

select distinct a.Email
from Person a, Person b
where a.Id != b.Id and a.Email = b.Email;

-- или -- 

select Email
from Person
group by Email
Having count(*)>1;