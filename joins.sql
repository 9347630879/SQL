use gas;

select * from gas.user2;

insert into gas.user2 (id,name,city,state,country,gender,phonenumber) values (2,'Sundhar','kurnool','TAMILNADU','EUROPE','male','1234567890');

select * from gas.user5;

insert into gas.user5 (id,name,state,country,userid) values (2,'Sai','Madhya Pradesh','INDIA',2);

select * from gas.user2 as usr
inner join gas.user5 as us on usr.id = us.userid;

select usr.name, us.state from gas.user2 as usr
inner join gas.user5 as us on usr.id = us.userid;

select * from gas.user2 as usr left join gas.user5 as us on usr.id = us.userid;

select * from gas.user2 as usr right join gas.user5 as us on usr.id = us.userid;
select * from gas.user2 as usr right join gas.user5 as us on userid = us.userid;