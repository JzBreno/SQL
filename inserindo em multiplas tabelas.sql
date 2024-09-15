use sakila;
show tables;
select * from country;
insert into country
values (default, "brasil2","2034-02-15 04:44:00");
insert into city
values(default,"sao paulo2", last_insert_id(),"2037-02-15 04:44:00" );
