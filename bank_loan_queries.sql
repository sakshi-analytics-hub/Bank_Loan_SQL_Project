CREATE DATABASE bank_loan_analysis;
USE bank_loan_analysis;
CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    name VARCHAR(50),
    age INT,
    city VARCHAR(50),
    income DECIMAL(10,2),
    credit_score INT
);
CREATE TABLE loans (
    loan_id INT PRIMARY KEY,
    customer_id INT,
    loan_amount DECIMAL(10,2),
    loan_type VARCHAR(30),
    interest_rate DECIMAL(5,2),
    loan_status VARCHAR(20),
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);
CREATE TABLE payments (
    payment_id INT PRIMARY KEY,
    loan_id INT,
    payment_date DATE,
    amount_paid DECIMAL(10,2),
    payment_status VARCHAR(20),
    FOREIGN KEY (loan_id) REFERENCES loans(loan_id)
);
INSERT INTO customers VALUES
(1,'Amit',30,'Bhopal',50000,720),
(2,'Neha',28,'Delhi',30000,650),
(3,'Raj',40,'Mumbai',80000,780),
(4,'Simran',35,'Indore',25000,600),
(5,'Karan',32,'Pune',60000,710),
(6,'Priya',27,'Jaipur',28000,640),
(7,'Rohit',45,'Delhi',90000,800),
(8,'Sneha',29,'Bhopal',35000,670),
(9,'Ankit',33,'Indore',40000,690),
(10,'Pooja',31,'Mumbai',55000,730),
(11,'Vikas',38,'Pune',75000,770),
(12,'Riya',26,'Jaipur',27000,620),
(13,'Arjun',42,'Delhi',85000,790),
(14,'Meena',36,'Bhopal',32000,660),
(15,'Suresh',50,'Indore',95000,810),
(16,'Kavita',34,'Mumbai',48000,700),
(17,'Manish',37,'Pune',62000,720),
(18,'Asha',28,'Jaipur',29000,630),
(19,'Deepak',41,'Delhi',88000,780),
(20,'Nikita',30,'Bhopal',36000,680),
(21,'Ramesh',44,'Indore',92000,800),
(22,'Sunita',33,'Mumbai',52000,710),
(23,'Ajay',39,'Pune',70000,750),
(24,'Anjali',27,'Jaipur',26000,610),
(25,'Vivek',35,'Delhi',64000,740),
(26,'Komal',29,'Bhopal',37000,690),
(27,'Sanjay',48,'Indore',97000,820),
(28,'Rekha',31,'Mumbai',54000,720),
(29,'Nitin',36,'Pune',68000,760),
(30,'Shreya',28,'Jaipur',30000,650);

select * from customers;

INSERT INTO loans VALUES
(1,1,200000,'Home Loan',8.5,'Approved'),
(2,2,100000,'Personal Loan',10.0,'Approved'),
(3,3,500000,'Car Loan',7.5,'Approved'),
(4,4,150000,'Personal Loan',11.0,'Rejected'),
(5,5,250000,'Home Loan',8.0,'Approved'),
(6,6,90000,'Personal Loan',10.5,'Approved'),
(7,7,600000,'Car Loan',7.0,'Approved'),
(8,8,120000,'Personal Loan',10.2,'Approved'),
(9,9,180000,'Home Loan',8.3,'Approved'),
(10,10,220000,'Car Loan',7.8,'Approved'),
(11,11,300000,'Home Loan',8.1,'Approved'),
(12,12,80000,'Personal Loan',11.2,'Rejected'),
(13,13,550000,'Car Loan',7.4,'Approved'),
(14,14,130000,'Personal Loan',10.8,'Approved'),
(15,15,650000,'Home Loan',7.9,'Approved'),
(16,16,210000,'Car Loan',8.2,'Approved'),
(17,17,260000,'Home Loan',8.4,'Approved'),
(18,18,95000,'Personal Loan',10.6,'Rejected'),
(19,19,500000,'Car Loan',7.3,'Approved'),
(20,20,140000,'Personal Loan',10.1,'Approved'),
(21,21,700000,'Home Loan',7.7,'Approved'),
(22,22,230000,'Car Loan',8.0,'Approved'),
(23,23,280000,'Home Loan',8.2,'Approved'),
(24,24,85000,'Personal Loan',11.5,'Rejected'),
(25,25,240000,'Car Loan',7.9,'Approved'),
(26,26,160000,'Personal Loan',10.3,'Approved'),
(27,27,750000,'Home Loan',7.6,'Approved'),
(28,28,200000,'Car Loan',8.1,'Approved'),
(29,29,270000,'Home Loan',8.3,'Approved'),
(30,30,100000,'Personal Loan',10.4,'Approved');

select * from loans;

INSERT INTO payments VALUES
(1,1,'2024-01-01',5000,'Paid'),
(2,2,'2024-01-05',3000,'Missed'),
(3,3,'2024-01-10',10000,'Paid'),
(4,5,'2024-01-12',7000,'Paid'),
(5,6,'2024-01-15',2000,'Missed'),
(6,7,'2024-01-18',12000,'Paid'),
(7,8,'2024-01-20',3500,'Paid'),
(8,9,'2024-01-22',4000,'Missed'),
(9,10,'2024-01-25',6000,'Paid'),
(10,11,'2024-01-28',8000,'Paid'),
(11,13,'2024-02-01',11000,'Paid'),
(12,14,'2024-02-03',4500,'Missed'),
(13,15,'2024-02-05',15000,'Paid'),
(14,16,'2024-02-07',6500,'Paid'),
(15,17,'2024-02-10',7500,'Paid'),
(16,19,'2024-02-12',12000,'Paid'),
(17,20,'2024-02-15',5000,'Missed'),
(18,21,'2024-02-18',16000,'Paid'),
(19,22,'2024-02-20',7000,'Paid'),
(20,23,'2024-02-22',8500,'Paid'),
(21,25,'2024-02-25',9000,'Paid'),
(22,26,'2024-02-27',4000,'Missed'),
(23,27,'2024-03-01',17000,'Paid'),
(24,28,'2024-03-03',6500,'Paid'),
(25,29,'2024-03-05',8000,'Paid'),
(26,30,'2024-03-07',3500,'Missed'),
(27,1,'2024-03-10',5000,'Paid'),
(28,2,'2024-03-12',3000,'Paid'),
(29,3,'2024-03-15',10000,'Paid'),
(30,5,'2024-03-18',7000,'Paid');

select * from payments;

--Q1.How many customers are present in the dataset?
SELECT COUNT(*) AS total_customers FROM customers;

--Q2.What is the total amount of approved loans?
SELECT SUM(loan_amount) AS total_approved_loans
       FROM loans
      WHERE loan_status = 'Approved';
      
--Q3.What is the distribution of loan approval and rejection?
SELECT loan_status, COUNT(*) AS total
     FROM loans
     GROUP BY loan_status;
     
--Q4.What is the average income of customers?
SELECT AVG(income) AS avg_income FROM customers;

--Q5.Which customers have income greater than 50,000?
SELECT name, income
       FROM customers
       WHERE income > 50000;
       
--Q6.What is the relationship between customer income and loan amount?
SELECT c.name, c.income, l.loan_amount
      FROM customers c
     JOIN loans l ON c.customer_id = l.customer_id;

--Q7.Which loan types are most common?
SELECT loan_type, COUNT(*) AS total_loans
       FROM loans
       GROUP BY loan_type;
       
--Q8.Which customers have low credit scores (below 650)?
SELECT name, credit_score
       FROM customers
       WHERE credit_score < 650;

--Q9.Which loans have missed payments?
SELECT loan_id, COUNT(*) AS missed_payments
       FROM payments
       WHERE payment_status = 'Missed'
      GROUP BY loan_id;
      
--Q10.Which customers have missed payments?
SELECT c.name, COUNT(*) AS missed_count
      FROM customers c
     JOIN loans l ON c.customer_id = l.customer_id
     JOIN payments p ON l.loan_id = p.loan_id
     WHERE p.payment_status = 'Missed'
     GROUP BY c.name;
     
--Q11.What is the average loan amount for each loan type?
SELECT loan_type, AVG(loan_amount) AS avg_loan
        FROM loans
       GROUP BY loan_type;
       
--Q12.What is the monthly trend of payments?
SELECT MONTH(payment_date) AS month,
      SUM(amount_paid) AS total_payment
      FROM payments
     GROUP BY month
     ORDER BY month;






