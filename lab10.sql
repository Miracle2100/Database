create table Tabl(
  name varchar(30),
  age integer
);
-------------------------------
create user user2 password 'kbtu';
grant select, insert on Tabl to user2;
revoke all privileges on Tabl from user2;

insert into Tabl values('Aru', 18),
                        ('Madi', 18),
                        ('Saltok', 19);
select * from Tabl;

begin transaction isolation level serializable ;
insert into Tabl values ('John', 42),
                         ('Michael', 24);
delete from Tabl where name='John';
savepoint mysavep;
select * from Tabl;
rollback to mysavep;
commit;
select * from Tabl;

delete from Tabl;
insert into Tabl values('John', 23);

begin transaction isolation level serializable ;
insert into Tabl values('John', 13),
                        ('David', 2);
savepoint saveit;
select * from Tabl;
rollback to saveit;
commit;