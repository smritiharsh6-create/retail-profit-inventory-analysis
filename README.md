# retail-profit-inventory-analysis
"MySQL project focused on financial and operational risk analysis for a retail bookstore using advanced DQL and CTEs."
Retail Bookstore Financial & Inventory Analysis System (MySQL)

A comprehensive Business Intelligence (BI) project developed using MySQL to transition a retail bookstore from static reporting to proactive, data-driven decision-making.

1. Executive Summary

This project demonstrates the ability to transform raw sales and inventory data into actionable financial and operational insights. The analysis focuses on three core areas:

Profitability Analysis: Determining true profit margins and identifying the highest-value authors.

Inventory Risk Mitigation: Using demand data (sales) combined with supply data (stock) to prevent stock-outs.

The system flagged One Hundred Years of Solitude as a critical re-order risk and identified Charls Bendict as the top profit contributor.

2. Technology Stack & Key Techniques

Category

Component

Description

Database

MySQL 8.0

Used for schema definition, data storage, and query execution.

Language

SQL (Structured Query Language)

Used for DDL, DML, and complex analytical DQL.

Core Technique

Common Table Expressions (CTEs)

Used for the Inventory Risk Assessment to separate the aggregation of demand from the application of supply filters.

Data Analysis

Multi-Table JOINs (INNER, LEFT), Financial Aggregation (SUM, ROUND).

Used to link sales transactions to book costs and author data for final profit calculation.

3. Key Analytical Findings

The following insights were derived from the queries in analytical_queries.sql:

A. Total Profitability (Author Contribution)

Top Insight: Author Charls Bendict is the clear profit leader, contributing the highest absolute total net profit.

Recommendation: Marketing resources and promotional efforts should be prioritized for this author's catalog.

B. Inventory Risk Assessment

High Risk Alert: One Hundred Years of Solitude was flagged as the sole high-priority item requiring immediate re-order (Stock Level: 12, Total Sold: 15).

Result: This proactive alert prevents a stock-out and avoids the loss of sales revenue.

C. Profit Margin Efficiency

Highest Margin: Pride and Prejudice has the highest profit margin (approx. 54.29%), indicating high efficiency per dollar of revenue.

Recommendation: This high margin provides flexibility for running deep discounts or using the title in promotional bundles.

4. How to Run This Project

This project is fully self-contained and reproducible.

Prerequisites: You must have a local instance of MySQL 8.0+ running.

Schema Setup: Execute the entire script in schema_and_data_setup.sql. This creates the Bookstoredb schema, all tables, and loads the data.

Run Reports: Execute the script in analytical_queries.sql. This will output the three final analytical tables used for the business recommendations in the Executive Summary.

"Updated README with full project structure and findings."



