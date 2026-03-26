# Bank_Loan_Analysis_Project

## Project Overview
This project involves analyzing a bank loan dataset using SQL queries in MySQL Workbench. The objective is to extract insights on loan types, repayment trends, and customer behavior, which can help banks make informed decisions.

## Dataset
- The project uses a **bank loan dataset** containing information such as:  
  - Customer ID  
  - Loan type  
  - Loan amount  
  - Payment dates and amounts  
 
## Project Objectives
- Calculate total and average loan amounts for each loan type.  
- Analyze monthly trends of loan repayments.  
- Identify patterns in loan distribution and customer repayment behavior.  
- Generate insights to assist in decision-making and reporting.

## Project Structure

Bank_Loan_Analysis_Project/
│
├── README.md # Project overview
├── bank_loan_queries.sql # All SQL queries
├── Bank_Loan_Queries_Report.pdf # PDF with queries, outputs, and screenshots

## Tools Used
- **MySQL Workbench:** For database creation, data management, and execution of SQL queries  
- **Structured Query Language (SQL):** For data manipulation, querying, and analysis  

## Database Design
The database is relational, consisting of three main tables: `Customers`, `Loans`, and `Payments`.

### Customers Table
| Column       | Description                          |
|--------------|--------------------------------------|
| customer_id  | Unique identifier (Primary Key)       |
| name         | Customer name                         |
| age          | Customer age                          |
| city         | City of residence                     |
| income       | Monthly or annual income              |
| credit_score | Creditworthiness score                |

### Loans Table
| Column       | Description                          |
|--------------|--------------------------------------|
| loan_id      | Unique identifier (Primary Key)       |
| customer_id  | Customer reference (Foreign Key)     |
| loan_amount  | Loan amount                           |
| loan_type    | Type of loan (Home, Personal, Car)   |
| loan_status  | Loan status (Approved/Rejected)       |

### Payments Table
| Column        | Description                          |
|---------------|--------------------------------------|
| payment_id    | Unique identifier (Primary Key)       |
| loan_id       | Loan reference (Foreign Key)         |
| payment_date  | Payment date                          |
| amount_paid   | Amount paid                           |
| payment_status| Status of payment (Paid/Missed)      |

## Relational Diagram

CUSTOMERS (1) ──< LOANS (1) ──< PAYMENTS

- One customer can have multiple loans (1:Many)  
- One loan can have multiple payments (1:Many)  
- `customer_id` is PK in Customers, FK in Loans  
- `loan_id` is PK in Loans, FK in Payments  
- `payment_id` is PK in Payments  

## SQL Questions

1. How many customers are present in the dataset?  

2. What is the total amount of approved loans?  

3. What is the distribution of loan approval and rejection?  

4. What is the average income of customers?  

5. Which customers have income greater than 50,000?  

6. What is the relationship between customer income and loan amount?  

7. Which loan types are most common?  

8. Which customers have low credit scores (below 650)?  

9. Which loans have missed payments?  

10. Which customers have missed payments?  

11. What is the average loan amount for each loan type?  

12. What is the monthly trend of payments?

##Conclusion

This project uses SQL to analyze bank loan data, uncovering trends in customer behavior, loan approvals, and default risks. The insights gained can help banks make informed, data-driven decisions for loan management and risk assessment.
