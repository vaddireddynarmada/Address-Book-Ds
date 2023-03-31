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
#UC3
 insert into address_book_service(firstName,lastName,address,city,state,email,zipCode,Phone_number)values
     ('Lucky','B','Hasthinapuram','Hyderabad','Telangana','Lucky@gmail.com','4578667','4567892396'),
	 ('Vihan','C','Emjal','Hyderabad','Telangana','Vihan@gmail.com','876548','5379853454'),
	 ('Bhargav','A','Chapapet','Hyderabad','Telangana','Bhargav@gmail.com','34587','9633413456'),
     ('Xyz','L','asd','Nalagonda','Telangana','Xyz@gmail.com','34567','9786574647'),
     ('Cdb','R','dsa','Kadapa','AndhraPradesh','Cdb@gmail.com','98765','9765434567');
select*from address_book_service;
#UC4
update address_book_service set Phone_number='9645678765' where firstName='Lucky';
select * from address_book_service;
#UC5
delete from address_book_service where firstName='Vihan';
select * from address_book_service;
#UC6
select * from address_book_service where city = 'Hyderabad' or state = 'Telangana';
#UC7
select city, state ,count(*) from address_book_service group by city;
#UC8
select * from address_book_service where city = 'Hyderabad' order by FirstName asc;
#UC9
alter table address_book_service add Name varchar(25) after lastname,
add Type varchar(20) after name;
describe address_book_service;
update address_book_service set name='book1',type='friend'  where firstname='lucky'||firstname='xyz';
update address_book_service set name='book2',type='family'  where firstname='bhargav'||firstname='cdb';
select * from address_book_service;
#UC10
select type ,count(*) from address_book_service group by type;