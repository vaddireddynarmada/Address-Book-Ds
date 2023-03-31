#UC1
create database address_book_service;
use address_book_service;
#UC2
create table address_book_service(
FirstName varchar(20) not null ,
LastName varchar(20) not null ,
Address varchar(100) not null ,
City varchar(30) not null ,
State varchar(30) not null ,
Email varchar(30) not null ,
ZipCode int not null ,
Phone_number double not null
);
describe address_book_service;