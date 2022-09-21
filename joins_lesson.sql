create database if not exists join_test_db;
use join_test_db;


create table roles (
    id int unsigned not null auto_increment,
    name varchar(100) not null,
    primary key (id)
);

create table users (
    id int unsigned not null auto_increment,
    name varchar(100) not null,
    email varchar(100) not null,
    role_id int unsigned default null,
    primary key (id),
    foreign key (role_id) references roles (id)
);

insert into roles (name) values ('admin');
insert into roles (name) values ('author');
insert into roles (name) values ('reviewer');
insert into roles (name) values ('commenter');

insert into users(name, email, role_id) values
('bob', 'bob@example.com', 1),
('joe', 'joe@example.com', 2),
('sally', 'sally@example.com', 3),
('adam', 'adam@example.com', 3),
('jane', 'jane@example.com', null),
('mike', 'mike@example.com', null);


select users.name as user_name, roles.name as role_name
from users
join roles on users.role_id = roles.id;

#left join - is used when you want to retrieve all the records from the left table, regardless of whether or not they have a corresponding record in the right table.

select users.name as user_name, roles.name as role_name
from users
left join roles on users.role_id = roles.id;
#now all users will be displayed.
