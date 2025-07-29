# 📊 Quantigration SQL Project

Welcome to the **QuantigrationUpdates SQL project** — a hands-on portfolio piece demonstrating database design, data manipulation, and basic analytics using **MySQL**.

This project simulates a simplified customer ordering and returns (RMA) system for a fictional tech company called **Quantigration**, tracking customers, orders, and return authorizations.

---

## 🗂️ Project Structure

This SQL project includes:

- 📁 **Database**: `QuantigrationUpdates`
- 📊 **3 relational tables**:
  - `Customers`: Customer info (later renamed to `Collaborators`)
  - `Orders`: Product orders placed by customers
  - `RMA`: Return Merchandise Authorization records linked to orders

---

## 🧱 Table Relationships

- `Orders.CustomerID` → references `Customers.CustomerID`  
- `RMA.OrderID` → references `Orders.OrderID`

---

## 📥 Sample Data

The script includes:

- 3 sample customer records  
- 3 product orders  
- 3 RMA records representing realistic return scenarios

---

## 🛠️ Operations & Queries Demonstrated

- ✅ `JOIN` — e.g., customers and their orders by location  
- 📌 `WHERE` — filter by state or city  
- 🔁 `UPDATE` — reflect RMA completion  
- ❌ `DELETE` — remove rejected returns  
- 🔄 `RENAME TABLE` — change `Customers` → `Collaborators`  
- 📤 `INTO OUTFILE` — export `Orders` data (local MySQL only)

---

## 📂 File

- `QuantigrationUpdates.sql` — contains all DDL, DML, and query examples

---

## 💡 Bonus Notes on Export

The `INTO OUTFILE` command saves results to `/tmp/` and only works if:

- You're using a **local MySQL server**
- Your MySQL user has **file write permissions**

**Note**: This won’t work on cloud-based or hosted MySQL platforms.  
For GUI tools like MySQL Workbench, exporting can be done via the **Export** menu.

---

## 🔧 Technologies Used

- MySQL
- MySQL Workbench

---

## ✨ Portfolio Purpose

This project was created to demonstrate:

- Relational database schema design  
- Foreign key relationships  
- Executing SQL queries (SELECT, JOIN, UPDATE, DELETE, RENAME)  
- Simulating business logic through a database  
- Real-world SQL for customer orders and returns

---


