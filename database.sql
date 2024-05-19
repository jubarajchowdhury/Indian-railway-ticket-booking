create database project;
use project;
create table signup
(pid int primary key,
name varchar(225),
phno varchar(13),
email varchar(225),
password varchar(225),
confirmp varchar(255)
);
create table login
(pid int references signup,
email varchar(225),
password varchar(225) primary key
);
create table forgetp
(pid int references signup,
email varchar(225) references login,
password varchar(225) primary key,
confirmp varchar(225) references forgetp
);
create table searchtr
(pid int references signup,
fom varchar(225),
too varchar(225),
date int,
searchtrain varchar(225)
);
