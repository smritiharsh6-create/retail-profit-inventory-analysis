create database Bookstoredb;
USE Bookstoredb;
create table Author( 
Author_id int primary key,
 First_name varchar(50),
 Last_name varchar(50),
 Birth_year int);
 
 Insert into Author (Author_id, First_name, Last_name,Birth_year) values
  (1, 'Charls','Bendict', 1987),
 (2, 'Coolen', 'Hoover',1996 ),
 (3, 'Alexander', 'Michalis', 1983),
 (4, 'Agatha', 'Christie', 1990),
 (5, 'Chetan', 'Baghat', 1975),
 (6, 'Nikita', 'Singh', 1995);
 Select * from author;
 
create table Publisher(
Publisher_id int primary key,
Name varchar(50),
City varchar(50));

Insert into Publisher (Publisher_id, Name, City) values
(101, 'Seagull Books', 'New York'),
(102, 'Penguin Classics', 'London'),
(103, 'Vintage Books', 'San Francisco'),
(104, 'Modern Library', 'New York'),
(105, 'Everyman''s Library', 'London');
select * from publisher;

create table Books(
Book_id int primary key,
Title varchar (50),
Author_id int, foreign key(Author_id) references Author(Author_id),
Publisher_id int, foreign key(Publisher_id) references publisher (publisher_id),
Publication_Year int,
Price int,
Cost_Price int,
Stock_level int);

Insert into Books (Book_id, Title, Author_id, Publisher_id, Publication_Year, Price,Cost_Price, Stock_level) Values
(1001, '1984', 1, 102, 1949, 12.99, 7.00, 50),     
(1002, 'Animal Farm', 1, 102, 1945, 9.50, 5.50, 60),   
(1003, 'Pride and Prejudice', 2, 102, 1813, 8.75, 4.00, 45),  
(1004, 'The Great Gatsby', 3, 101, 1925, 11.25, 6.50, 7),    
(1005, 'Beloved', 4, 103, 1987, 14.99, 8.00, 30),
(1006, 'A Passage to India', NULL, 101, 1924, 10.00, 5.00, 25), 
(1007, 'One Hundred Years of Solitude', 5, 104, 1967, 18.50, 10.00, 12), 
(1008, 'Mrs. Dalloway', 6, 105, 1925, 13.99, 7.50, 40);
Select * from Books;

create table Sales(
Sales_id int primary key,
Book_id int, foreign key(Book_id) references Books(Book_id),
Sales_date int,
Quantity int);
Insert into Sales (Sales_id, Book_id, Sales_date, Quantity)Values
(5001, 1001, str_to_date('2024-06-01', '%Y-%m-%d'),5),  
(5002, 1003, str_to_date('2024-06-01', '%Y-%m-%d' ), 8), 
(5003, 1001, str_to_date('2024-06-02','%Y-%m-%d'), 10), 
(5004, 1004,  str_to_date('2024-06-03','%Y-%m-%d'), 3),  
(5005, 1002, str_to_date('2024-06-03', '%Y-%m-%d'), 7), 
(5006, 1005, str_to_date('2024-06-04','%Y-%m-%d' ), 2), 
(5007, 1004, str_to_date('2024-06-05','%Y-%m-%d'), 5),  
(5008, 1007,str_to_date('2024-06-05','%Y-%m-%d' ) , 15), 
(5009, 1001, str_to_date('2024-06-06','%Y-%m-%d') , 15), 
(5010, 1003,str_to_date('2024-06-06','%Y-%m-%d') , 4);  
select * from sales;
















