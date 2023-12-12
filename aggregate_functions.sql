use employee;

create table employee(
	id int primary key auto_increment,
    name varchar(20) not null,
    sal bigint not null,
    state varchar(20) not null,
    country varchar(20) not null default('india'),
    isactive bit default(1)
);

insert into employee(id,name,sal,state,country,isactive) values (1,'Sai',45000,'AndhraPradesh','India',1);
insert into employee(id,name,sal,state,country,isactive) values (2,'Dhanunjai',75000,'Telangana','India',1);
insert into employee(id,name,sal,state,country,isactive) values (3,'Sundhar',55000,'AndhraPradesh','India',1);
insert into employee(id,name,sal,state,country,isactive) values (4,'Meghana',100000,'Telangana','India',1);
insert into employee(id,name,sal,state,country,isactive) values (5,'Mounika',30000,'Perth','AUSTRILIA',1);
insert into employee(id,name,sal,state,country,isactive) values (6,'DANDUPANI',30000,'Perth','AUSTRILIA',1);

SELECT * FROM EMPLOYEE;

select count(*) from employee;

select count(id) from employee;

select min(sal) from employee;
select max(sal) from employee;
select avg(sal) from employee;
select min(sal) from employee group by name;

select count(state) from employee where state = 'AndhraPradesh';
select count(id) from employee where state = 'Telangana';

select state,count(id)  as emp from employee group by state;
select country,state,count(id)  as emp from employee group by country,state;

select country,state,count(id)  as emp from employee where sal>=45000 group by country,state;

select country,state,count(id)  as emp from employee where sal<=45000 group by country,state;
select country,state,count(id)  as emp from employee where sal>=45000 group by country,state having count(id);
select country,state,count(id)  as emp from employee where sal>=45000 group by country,state having count(id) >=3;

select trim(name ) as temp from employee;
select ltrim(name) as temp from employee;
select rtrim(country) as  tc from employee;

select length(name) from employee;
select length(state) from employee;
select right(name,2) from employee;

select left(name,5) from employee;

select now();

select current_time();
select current_date();
