

use fact_table;

select * from country;
select * from person;

select country_name,count(*) as 'no of persons' from  person
group by  country_name ;

select country_name,count(*) as 'no of persons' from  person
group by  country_name  order by count(*) desc;

select country_name,avg(rating) avg_rating from person group by country_name having avg(rating) > 3.0;

select country_name,rating from person where rating= (select rating from person where country_name = 'usa');

select country_name, population from country 
 where population > ( select avg(population) from country ) ;
 
 

 
 create database product;
 use  product;
 create table  Customer 
 (Customer_Id int primary key  auto_increment,
 First_name  varchar (10),
 Last_name varchar (10),
 Email varchar (30),
 Phone_no char(10),
 Address varchar(100),
 City varchar(20),
 State varchar(20),
 Zip_code varchar(10),
 Country varchar(20)) ;
 

 
 select * from customer ;
 desc  customer ;
 
 INSERT INTO Customer (First_name, Last_name, Email, Phone_no, Address, City, State, Zip_code, Country)  
VALUES  
('John', 'Doe', 'john.doe@yahoo.com', '1234567890', '123 Main St', 'New York', 'NY', '10001', 'USA'),  
('Jane', 'Smith', 'jane.smith@yahoo.com', '9876543210', '456 Elm St', 'Los Angeles', 'CA', '90001', 'USA'),  
('Michael', 'Johnson', 'michael.johnson@gmail.com', '5556782347', '789 Oak St', 'Chicago', 'IL', '60601', 'USA'),  
('Emily', 'Davis', 'emily.davis@gmail.com', '4449998888', '321 Maple St', 'Houston', 'TX', '77001', 'USA'),  
('Robert', 'Brown', 'robert.brown@hotmail.com', '3332221111', '654 Pine St', 'Phoenix', 'AZ', '85001', 'USA');
 

 
 create view customer_info as  select  concat(first_name," " ,last_name) full_name,customer_id , email  from customer;
  select * from customer_info;  
  
  create view US_CUSTOMERS as select * from Customer  where country ='usa';
  
  create view customer_details as select concat(First_name," ",last_name) full_name , email,phone_no,state from customer; 
 select * from customer_details; 
  
  
  
  UPDATE customer_details SET PHONE_NO = 9061213663 WHERE STATE= 'CA'; 
  
  select state, count(*) as customer_count from customer group by state  having count(*)>5;
  
  select state,count(*) as 'no of customers' from customer_details  group by state;
  
  select * from customer_details order by  state ;
  
  
                                                           