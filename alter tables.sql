create table gas.user2(
id int primary key auto_increment,
name varchar(20) not null,
city varchar(20),
state varchar(20),
country varchar(20)
);
select  * from gas.user2;


alter table gas.user2 add constraint user2_pk_id primary key (id);

alter table gas.user5
add constraint fk_user5_user2id foreign key (userid) references gas.user2 (id);

alter table gas.user5 drop foreign key user5_ibfk_1;

create table gas.user5(
id int primary key auto_increment,
name varchar(20) not null,
city varchar(20),
state varchar(20),
country varchar(20),
userid int not null,
constraint foreign key user5_user_userid (userid) references gas.user2(id)
);

alter table gas.user2 add column gender varchar(20);
alter table gas.user2 add column phonenumber int;

alter table gas.user2 modify gender varchar(10);

alter table gas.user5 drop city;

alter table gas.user5 modify name varchar(20) null;

alter table gas.user5 modify name varchar(20) not null;

alter table gas.user2 add constraint unique_name unique(name);

alter table gas.user2 drop index unique_name;

alter table gas.user5 add constraint chk_name_3 check(length(name)>=3);
alter table gas.user2 add constraint  chk_phonenumber_10 check(length(phonenumber)>=10);

alter table gas.user5 drop check chk_name_3;

