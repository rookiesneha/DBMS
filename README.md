🐾 Zoo Management Database System

This project is a full-fledged relational database system designed to simplify zoo operations — including animal tracking, enclosure details, staff assignments, feeding schedules, and more.

Built using MySQL, the system enables efficient data storage, fast retrieval, user access control, and normalized design to reduce redundancy.

---

 📌 Objective

To design and implement a structured database that streamlines zoo management tasks such as animal records, species classification, nutrition tracking, staff allocation, and visitor interaction — all while improving data integrity and minimizing redundancy.

---

🧰 Technologies Used

- MySQL (Database)
- Java / PHP (Backend logic)
- HTML, CSS, JavaScript (Frontend)
- REST APIs (for data exchange)

---

 🛠 Key Features

- 🐘 Animal Management: Store species, age, gender, feeding info, medical history, enclosure details  
- 👷 Zookeeper Management: Track staff assigned to zones and animals  
- 🍽 Feed Schedule: Maintain and update daily feeding details  
- 🧾 Visitor Info & Reports: Optional data module for tickets or zone-based animal views  
- 🔐 Authentication & Authorization (Planned): To restrict access to admin vs staff  
- 🧹 Normalization: Fully normalized schema to 3NF for minimal redundancy

---

## 🧩 System Architecture

The system includes the following components:

- 👨‍💻 Frontend Interface: UI for zoo staff (HTML/CSS/JS)
- 🔧 Backend Server: Business logic written in Java or PHP
- 🛢 MySQL Database: Stores animal, staff, feeding, and enclosure data
- 🔌 REST APIs: Handles client-server communication
- 🔒 Auth System (Planned): To protect sensitive access

---

## 🗃 Database Schema (Entities & Tables)

| Table            | Description                                      |
|------------------|--------------------------------------------------|
| Animal           | Basic details like name, age, species, gender    |
| Species          | Scientific and local classification              |
| Enclosure        | Zone name, environment type                      |
| Feed_Schedule    | Feeding time, quantity, food type                |
| Zookeeper        | Staff details and assigned zones                 |
| Medical_History  | Treatment history for each animal                |

---


📊 Normalization

The database schema was fully normalized up to 3NF:

✅ Removed redundant animal-enclosure mapping
✅ Separated species table from main animal data
✅ Introduced foreign key relationships for referential integrity

---
sample screenshots have been given for easy understanding.

---

🧠 Challenges & Solutions

Challenge	Solution

Data redundancy	Solved using normalization (3NF)
Complex report generation	Designed efficient JOIN queries
Data integrity	Enforced constraints & key relationships
User entry errors	Added form validation (planned)


---

🚀 How to Run

1. Import the SQL schema into MySQL:
SOURCE zoo_db_schema.sql;
2. Populate tables with sample data using insert queries.
3. (Optional)Run the Java/PHP backend and connect frontend via browser.
4. Execute queries and generate reports using any MySQL client.

---

📚 Learning Outcomes

Designed a normalized relational schema for a real-world domain
Implemented core SQL concepts (DDL, DML, JOIN, constraints)
Understood data modeling using ER diagrams
Applied automation principles to data entry and reporting

---

📄 License

MIT License — free to use and modify.
---
