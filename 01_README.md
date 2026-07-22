# E-Commerce Order Investigation using SQL

## Project Overview

This project was completed as part of my **SQL60 Learning Program (Week 1 – SQL Foundations)**.

The objective was to analyze a fictional e-commerce dataset using foundational SQL concepts and answer business questions similar to those encountered by a Business Analytics Intern.

---

# Business Objective

The Operations team wanted to investigate:

* High-value orders
* Order cancellations
* Delivery performance
* Customer data quality
* Product availability

The goal was to generate business insights that could support operational improvements.

---

# Dataset

The project uses three tables:

### Customers

Contains customer information including city, signup date, and account status.

### Orders

Contains order value, payment method, delivery information, and order status.

### Products

Contains product category, price, and stock availability.

---

# Table Grain

| Table     | One Row Represents |
| --------- | ------------------ |
| Customers | One customer       |
| Orders    | One order          |
| Products  | One product        |

---

# SQL Concepts Used

* SELECT
* FROM
* DISTINCT
* LIMIT
* WHERE
* Comparison Operators
* AND / OR / NOT
* IN / NOT IN
* BETWEEN
* LIKE
* IS NULL / IS NOT NULL
* ORDER BY
* CASE WHEN

---

# Business Questions Solved

Examples include:

* Find high-value orders.
* Identify cancelled orders.
* Detect missing customer information.
* Search customers using pattern matching.
* Classify orders into business segments.
* Analyze delivery performance.
* Investigate operational priority orders.

---

#  Key Business Insights

* High-value orders require stronger delivery monitoring.
* Cancelled orders should be investigated to reduce revenue loss.
* Missing customer information affects business reporting.
* Delivery performance is inconsistent across orders.

---

#  Recommendations

* Prioritize fulfillment of high-value orders.
* Build dashboards to monitor cancellations.
* Improve customer data validation.
* Monitor delivery SLA compliance using SQL reports.

---

# Skills Demonstrated

* SQL Fundamentals
* Business Query Writing
* Data Filtering
* Pattern Matching
* Data Cleaning
* Business Segmentation using CASE WHEN
* Analytical Thinking
* Business Insight Generation

---

#  Project Structure

```text
ecommerce-order-investigation/
│
├── README.md
├── data/
│   ├── customers.csv
│   ├── orders.csv
│   └── products.csv
├── sql/
│   └── analysis.sql
└── insights/
    └── business_insights.md
```

#  Learning Outcome

This project strengthened my understanding of SQL fundamentals and demonstrated how SQL can be used to answer real business questions, identify operational issues, and communicate actionable insights.

This marks the completion of **Week 1 – SQL Foundations** in my SQL60 learning journey.




 # **Author**

Prem

Aspiring Business Analyst | Product Analyst | SQL & Data Analytics Learner

Currently building a portfolio of real-world analytics projects through the SQL60 Learning Program.

