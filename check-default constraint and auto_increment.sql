

create schema showroom;

use showroom;

drop table showroom.customer;

create table showroom.customer(
id int primary key,
name varchar(45) not null,
mobno int check(length(mobno)=10),
age int check(age>=18)
);

insert into showroom.customer (id,name,mobno,age) values (1,'Sundhar',1234567890,20);

select * from showroom.customer;

drop table showroom.customeraddress;

create table showroom.customeraddress(
id int primary key,
name varchar(20)not null,
state varchar(20) not null,
country varchar(20) default('india')
);

insert into showroom.customeraddress(id, name, state, country) values (1, 'Sai', 'ANDHRA PRADESH', 'india');
select * from showroom.customeraddress;


create table showroom.sai(
id int primary key auto_increment,
name varchar(45) not null,
mobno int check(length(mobno)=10),
age int check(age>=18)
);

insert into showroom.sai (name,mobno,age) values ('Sundhar',1234567890,20);

select * from showroom.sai;