create table gas.user3(
id int primary key auto_increment,
name varchar(40) not null,
city varchar(40) not null,
state varchar(40) not null,
country varchar(40) not null default('india')
);

select * from gas.user3;

create table gas.user5(
	id int primary key auto_increment,
	name varchar(40) not null,
	city varchar(40) not null,
	state varchar(40) not null,
	country varchar(40) default('india'),
	userid int not null,
	constraint foreign key user5_user_userid (userid) references gas.user3(id)
);

alter table gas.user5 add column gender varchar(10);
alter table gas.user3 add column gender varchar(45);
alter table gas.user5 add column phone_number int;

alter table gas.user3 modify state varchar(12);

alter table gas.user5 drop column city;

alter table gas.user3 modify city varchar(40) null;

alter table gas.user5 modify state varchar(40) not null;

alter table gas.user3 add constraint unique_name unique(name);

alter table gas.user3 drop index unique_name;

alter table gas.user5 add constraint chk_name_3 check(length(name)>=3);
alter table gas.user5 add  constraint chk_phone_number_10 check(length(phone_number)>=10);

alter table gas.user5 drop check chk_name_3;
