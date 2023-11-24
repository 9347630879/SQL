create table employee.emp(
id int,
name varchar(40),
address varchar(20),
city varchar(20),
state varchar(20),
country varchar(20),
pincode int
);

select * from employee.emp;

insert into employee.emp(id,name,address,city,state,country,pincode)
		values(1,'sundhar','shareennagar','kurnool','andhrapradesh','india',518003);
        
update employee.emp set country='india' where country='europe';
delete from employee.emp where id=1;