Monkeypox Data Analysis

---Overview---
This repository contains the analysis code and documentation for studying monkeypox data. Monkeypox is a rare viral disease that causes symptoms similar to smallpox, and studying its data can provide insights into its transmission, spread, and potential control measures.

---Data Sources---
Data Source 1: (https://github.com/owid/monkeypox?tab=readme-ov-file)
Data Source 2: (https://www.global.health/)
...
---Analysis Pipeline---
1. Data Cleaning and Preparation with MySQL
Data Import: Monkeypox data was imported into MySQL databases, creating appropriate tables.
Data Cleaning: Duplicate entries were removed, missing values imputed, and data formats standardized.
Normalization and Transformation: Categorical variables were normalized, numerical features scaled, and appropriate transformations applied.
Integration with External Data Sources: External data sources were integrated to enrich analysis.
2. Exploratory Data Analysis (EDA)
Descriptive Statistics: Summary statistics were calculated to understand data characteristics.
3. Visualization
Insights were visualized using charts and graphs to aid understanding and interpretation.
Usage

---Usage---
Installation
Environment Setup: Install and run MySQL on your system.
Database Creation: Create a new MySQL database for the monkeypox data.
Dependency Installation: Install necessary packages (e.g., mysql-connector-python for Python).
Execution
Data Upload: Use provided scripts/tools to upload monkeypox data to MySQL:

Connect to MySQL.
Read and transform data.
Insert into database tables.
Query Execution: Run SQL queries for analysis:

Connect to MySQL.
Write and execute queries using MySQL client.
Review results for insights.
Customization
Script Customization: Modify data upload scripts for different file formats or schema changes.
Query Customization: Customize SQL queries to address specific analysis needs.
Parameterization: Parameterize scripts/queries for flexibility and reusability.

