create schema estate;

create table estate.propertytype(
id int primary key auto_increment,
type varchar(25),
descripition varchar(256) 
);

create table estate.property(
id int primary key auto_increment,
propertytypeid int,
name varchar(50),
dimensions varchar(100),
constraint foreign key property_propertytype_propertytypeid (propertytypeid) references estate.property(id)
);

create table estate.address(
id int primary key auto_increment,
street varchar(50),
landmark varchar(50),
state varchar(50),
country varchar(50),
pincode int
);

create table estate.addressmapping(
id int primary key auto_increment,
propertyid int,
addressid int,
constraint foreign  key addressmapping_property_propertyid (propertyid) references estate.property(id),
constraint  foreign key addressmapping_address_addressid (addressid) references estate.address(id)
);

insert into estate.propertytype (type,descripition) values ('Taj Hotel','Nice Service');
insert into estate.propertytype (type,descripition) values ('Raj Villas','Good Visit');
insert into estate.propertytype (type,descripition) values ('Apartment','Good');

select * from estate.propertytype;

insert  into estate.property (propertytypeid,name,dimensions) values (1,'DSS','1 acer and  1200 sq yards');
insert  into estate.property (propertytypeid,name,dimensions) values (2,'SJ','1 acer and  1200 SQS');
insert  into estate.property (propertytypeid,name,dimensions) values (1,'DJ','1 acer and  250 INCHES');
insert  into estate.property (propertytypeid,name,dimensions) values (3,'Mahal','1 acer and  1200 sq yards');

select * from  estate.property;

insert into  estate.address (street,landmark,state,country,pincode) 
	values ('Shareen Nagar','Y.S.Vigraham','Andhra Pradesh','India',518003);

insert into  estate.address (street,landmark,state,country,pincode) 
	values ('Rah Vihar','Main Road','Andhra Pradesh','India',518003);
    
insert into  estate.address (street,landmark,state,country,pincode) 
	values ('Krishna Nagar','Andhra Bank','Andhra Pradesh','India',518003);
    
select * from estate.address;

insert into  estate.addressmapping(propertyid,addressid) values (1,3);
insert into  estate.addressmapping(propertyid,addressid) values (2,2);
insert into  estate.addressmapping(propertyid,addressid) values (3,2);

select * from estate.addressmapping;

select * from estate.propertytype as prt
join estate.property as p on prt.id = p.propertytypeid;

select * from estate.propertytype as prt
join estate.addressmapping as adr on prt.id = adr.propertyid;

select * from estate.propertytype as prt
join estate.addressmapping as adr on prt.id = adr.addressid;
 
 