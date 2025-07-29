📊 Quantigration SQL Project
Welcome to the QuantigrationUpdates SQL project — a hands-on portfolio piece that demonstrates database design, data manipulation, and basic analytics in MySQL.

This project simulates a simplified customer ordering and returns (RMA) system for a tech company called Quantigration, tracking customers, orders, and return authorizations.

🗂️ Project Structure
This SQL script includes:

Database creation: QuantigrationUpdates

3 relational tables:

Customers: Customer info (later renamed to Collaborators)

Orders: Product orders placed by customers

RMA: Return Merchandise Authorization records linked to orders

🧱 Table Relationships
Orders.CustomerID → references Customers.CustomerID

RMA.OrderID → references Orders.OrderID

📥 Sample Data
The script includes:

3 customer records

3 product orders

3 RMA records representing typical return scenarios

🛠️ Operations & Queries
The file demonstrates:

✅ Joins (e.g., customers and their orders by location)

📌 WHERE clauses to filter by state or city

🔁 UPDATE to reflect RMA completion

❌ DELETE to remove rejected returns

🔄 RENAME to change a table name (Customers → Collaborators)

📤 INTO OUTFILE export of orders (for local MySQL setups)

📂 File
SQL Project QuantigrationUpdates.sql — all DDL, DML, and analysis queries

💡 Bonus Notes
The INTO OUTFILE command writes to /tmp/ — this only works if:

You’re using a MySQL server installed on your system

Your MySQL user has permission to write to files

It won’t work on most cloud-based SQL platforms

If you’re using MySQL Workbench or another GUI, exporting can be done via the export menu instead.

🔧 Technologies
MySQL Workbench


✨ Portfolio Purpose
This project was created to demonstrate:

Relational database design

Foreign key usage

Writing and executing SQL queries

Performing CRUD operations

Structuring a database for real-world scenarios
