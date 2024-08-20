create database Bankdetails;
use Bankdetails;
 show databases;
create table customer(id int, first_name varchar(20), last_name varchar(20),DOB varchar(20),
city varchar(20),mobile_no varchar(15),primary key(id));
create table accounts(id int,customer_id int,balance bigint,account_status varchar(20),
account_type varchar(20),currency varchar(20),primary key(id),
foreign key(customer_id) references customer(id));
select * from customer;
select * from accounts;
create table branch(id int ,branch_name varchar(20),branch_loction varchar(20),primary key(id));
select * from branch;
create table loan(loan_id int,customer_id int,branch_id int,loan_amount bigint,date_issued date,primary key(loan_id),
foreign key(customer_id) references customer(id),
foreign key(branch_id) references branch(id));
create table transactions(trans_id int,trans_type varchar(20),from_account_id int,
to_account_id int,date_issued date,amount bigint,primary key(trans_id),
foreign key(from_account_id) references accounts(id),foreign key(to_account_id) references accounts(id));