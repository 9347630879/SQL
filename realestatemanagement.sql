create schema realestatemgt;

create table realestatemgt.propertytype(
id int primary key auto_increment,
type varchar(50),
description varchar(50)
);

insert into realestatemgt.propertytype (type,description) values ('Taj Hotel','Nice Service');
insert into realestatemgt.propertytype (type,description) values ('Raj Villas','Good Visit');
insert into realestatemgt.propertytype (type,description) values ('Apartment','Good');

select * from propertytype;

create table realestatemgt.property(
id int primary key auto_increment,
propertytypeid int,
name varchar(100),
dimensions varchar(100),
constraint fk_property_propertytype foreign key (propertytypeid) references realestatemgt.propertytype(id)
);

insert  into realestatemgt.property (propertytypeid,name,dimensions) values (1,'DSS','1 acer and  1200 sq yards');
insert  into realestatemgt.property (propertytypeid,name,dimensions) values (2,'SJ','1 acer and  1200 SQS');
insert  into realestatemgt.property (propertytypeid,name,dimensions) values (1,'DJ','1 acer and  250 INCHES');
insert  into realestatemgt.property (propertytypeid,name,dimensions) values (3,'Mahal','1 acer and  1200 sq yards');

select * from  realestatemgt.property;

use realestatemgt;

create table country(
id int primary key auto_increment,
name varchar(20) not null
);

create table realestatemgt.state(
id int primary key auto_increment,
name varchar(10) not null,
countryid int,
constraint fk_state_country_countryid foreign key(countryid) references realestatemgt.country(id)
);

create table address (
id int primary key auto_increment,
name varchar(100) null,
street varchar(100) null,
landmark varchar(100) null,
stateid int,
pincode int not null,
constraint fk_address_state_stateid foreign key(stateid) references realestatemgt.state(id)
);




    
select * from realestatemgt.address;

create table propertyaddressmapping(
id int primary key,
propertyid int,
addressid int,
constraint fk_propertyaddressmapping_property_propertyid foreign key(propertyid) references realestatemgt.property(id),
constraint fk_propertyaddressmapping_address_addressid foreign key(addressid) references realestatemgt.address(id)
);

create table propertyaddress (
id int primary key auto_increment,
name varchar(100) null,
street varchar(100) null,
landmark varchar(100) null,
stateid int,
pincode int not null,
propertyid int,
constraint fk_propertyaddress_state_stateid foreign key(stateid) references realestatemgt.state(id),
constraint fk_propertyaddress_property_propertyid foreign key(propertyid) references realestatemgt.property(id)
);

insert into propertyaddress(street,landmark,stateid,pincode,propertyid) values('NH44','SR ROAD-1',null,'518003',1);
insert into propertyaddress(street,landmark,stateid,pincode,propertyid) values('NH44','SR ROAD-1',null,'518003',2);
insert into propertyaddress(street,landmark,stateid,pincode,propertyid) values('NH44','SR ROAD-4',null,'518002',3);

insert into  realestatemgt.address (street,landmark,stateid,pincode) 
	values ('Shareen Nagar','Y.S.Vigraham',null,518003);
insert into  realestatemgt.address (street,landmark,stateid,pincode) 
	values ('Shareen Nagar','Y.S.Vigraham',null,518003);
insert into  realestatemgt.address (street,landmark,stateid,pincode) 
	values ('Krishna Nagar','Honey Studio',null,518003);

    

insert into propertyaddressmapping(id,propertyid,addressid) values (1,1,1);
insert into propertyaddressmapping(id,propertyid,addressid) values (2,2,2);
insert into propertyaddressmapping(id,propertyid,addressid) values (3,3,3);

select pt.type,p.name, pam.propertyid,a.street,a.landmark from propertytype as pt
join property as p on pt.id = p.propertytypeid
join propertyaddressmapping as pam on p.id = pam.propertyid
join address as a on pam.id = a.id