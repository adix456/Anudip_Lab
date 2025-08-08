Lab 2 Question:
Database Schema: Consider a simple database with one tables: BankAccount BankAccount 
 create database BankAccount;
  use bankaccount;

Table: ● Columns: account_id (Primary Key), account_holder_name, account_balance 

mysql> create table BankAccount (account_id int(10) primary key not null,account_holder_name varchar(20) not null,account_balance varchar(20) not null);

 Task 1: Insert Data Write an SQL INSERT statement to insert data into the BankAccount table.
mysql> insert into BankAccount values(1,'Adi',100000),(2,'Sumit',120120),(3,'Rohan',451252),(4,'yash',222121),(5,'vaibhav',89898);

Purpose:
To add new data (records) in a table.
In this case, it adds new bank accounts into the BankAccount table.

Task 2: Retrieving Data Write an SQL SELECT statement to retrieve the account_holder_name and account_balance of all account holders from the BankAccount table.
mysql> select account_holder_name,account_balance from BankAccount;

Purpose:
To retrieve specific columns from a table.
Here, it gets the name and balance of all account holders.

+------------+---------------------+
| account_id | account_holder_name |
+------------+---------------------+
|          1 | Adi                 |
|          2 | Sumit               |
|          3 | Rohan               |
|          4 | yash                |
|          5 | vaibhav             |
+------------+---------------------+

 Task 3: Filtering Data Write an SQL SELECT statement to retrieve the account_holder_name and account_balance where the account_balance is more than 30,000. 
mysql> select account_holder_name,account_balance from BankAccount where account_balance>30000;

Purpose:
In this task, it filters results to show only account holders with a balance greater than ₹30,000.

+---------------------+-----------------+
| account_holder_name | account_balance |
+---------------------+-----------------+
| Adi                 | 100000          |
| Sumit               | 120120          |
| Rohan               | 451252          |
| yash                | 222121          |
| vaibhav             | 89898           |
+---------------------+-----------------+

 Task 4: Updating Data Write an SQL UPDATE statement to change the account_balance of the account holder whose ID is 101.
mysql> update BankAccount set account_balance=50000 where account_id=1;

purpose:
Here, it changes the account_balance of the account with account_id = 1.
+------------+---------------------+-----------------+
| account_id | account_holder_name | account_balance |
+------------+---------------------+-----------------+
|          1 | Adi                 | 50000           |
|          2 | Sumit               | 120120          |
|          3 | Rohan               | 451252          |
|          4 | yash                | 222121          |
|          5 | vaibhav             | 89898           |
+------------+---------------------+-----------------+
5 rows in set (0.00 sec)


 