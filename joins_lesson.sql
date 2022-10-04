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

