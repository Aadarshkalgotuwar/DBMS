
create table friends(sr int ,name varchar(10),age int,addr varchar(10));
create table enemy(esr int ,ename varchar(20),age int, eaddr varchar(20));
insert into enemy values(1 ,"vedant",20,"jbfjfud");
insert into enemy values(2,"diaa",29,"jkdhfh");
insert into enemy values(4,"hdjjd",19,"nmxbvh");
insert into friends values(1,"santosh",20,"nanded");
insert into friends values(2,"rehman",29,"pune");
insert into friends values(3,"pratik",19,"akurdi");
alter table friends add column no int;
insert into friends (no) values (345);
select max(age)from friends;
select avg(age)from friends;

create view ask as select sr,name,addr from friends;

select friends.name,friends.addr,enemy.ename,enemy.eaddr from friends inner join enemy on friends.age=enemy.age;
select *from friends;
select*from ask;
select*from enemy;
