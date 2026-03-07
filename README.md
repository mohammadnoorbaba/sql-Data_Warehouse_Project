📊 SQL Data Warehouse Project
📌 Project Overview

This project demonstrates the implementation of a modern Data Warehouse using SQL Server. The goal of the project is to transform raw operational data into clean, structured, and analytics-ready datasets that support reporting and business intelligence.

The project follows the Medallion Architecture (Bronze, Silver, Gold) approach for organizing data pipelines and transformations.

🏗 Data Architecture

The warehouse is designed using a three-layer architecture:
<img width="2111" height="1141" alt="Architecture drawio" src="https://github.com/user-attachments/assets/ece6c501-4337-41d5-b7f2-eaf4512a7092" />


🥉 Bronze Layer

Stores raw data ingested directly from source systems.

Data is loaded as-is without transformations.

Acts as the staging layer for the warehouse.

🥈 Silver Layer

Performs data cleaning and transformation.

Standardizes data types and resolves data quality issues.

Integrates data from multiple source systems.

🥇 Gold Layer

Contains business-ready datasets.

Data is modeled into Fact and Dimension tables.

Optimized for analytics and reporting.

📂 Repository Structure

```
sql-Data_Warehouse_Project/
│
├── datasets/                # Source datasets (ERP & CRM data)
│
├── docs/                    # Architecture and documentation
│   ├── data_architecture.drawio
│   ├── data_flow.drawio
│   ├── data_models.drawio
│   └── data_catalog.md
│
├── scripts/                 # SQL scripts for warehouse pipeline
│   ├── bronze/              # Raw data ingestion scripts
│   ├── silver/              # Data cleaning and transformation
│   └── gold/                # Analytical models (fact & dimension tables)
│
├── tests/                   # Data quality and testing scripts
│
└── README.md                # Project documentation
```

⚙️ Technologies Used

1.SQL Server

2.T-SQL

3.SQL Server Management Studio (SSMS)

🔄 ETL Workflow

1.Load raw data into Bronze tables

2.Clean and transform data in the Silver layer

3.Create Fact and Dimension tables in the Gold layer

4.Use stored procedures to automate ETL operations
