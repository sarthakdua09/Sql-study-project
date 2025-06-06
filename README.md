📊 Rape Cases Project Evaluation
🧾 Project Overview
This project analyzes a dataset of rape case records across various cities and states in India. The objective is to derive insights such as trends over years, case outcomes, average victim age, and more. It uses SQL for data storage, querying, and exploration.

🛠️ Technologies Used
MySQL / SQL

Relational Database Management

Data Querying & Aggregation

🗃️ Database Structure
Database Name: RapeCasesStudy

Table Name: RapeCases

Column Name	Data Type	Description
CaseID	INT (PK)	Unique identifier for each case
CaseYear	INT	Year the case was reported
VictimAge	INT	Age of the victim
SuspectAge	INT	Age of the suspect
City	VARCHAR(100)	City where the incident occurred
State	VARCHAR(100)	State of occurrence
CaseStatus	VARCHAR(50)	Status of the case (Closed/Pending/Convicted)
CaseDescription	TEXT	Additional context or outcome info

📥 Data Inserted
The dataset includes 45+ records of cases from 2019 to 2024 across major Indian cities with varying statuses like:

Closed

Pending

Convicted

🔍 Queries & Insights
1. Total Cases by Year
sql
Copy
Edit
SELECT CaseYear, COUNT(*) AS TotalCases
FROM RapeCases
GROUP BY CaseYear;
2. Cases by Status
sql
Copy
Edit
SELECT CaseStatus, COUNT(*) AS TotalCases
FROM RapeCases
GROUP BY CaseStatus;
3. Pending Cases in 2024
sql
Copy
Edit
SELECT * 
FROM RapeCases
WHERE CaseYear = 2024 AND CaseStatus = 'Pending';
4. Average Victim Age
sql
Copy
Edit
SELECT AVG(VictimAge) AS AverageVictimAge
FROM RapeCases;
5. Top 3 Cities with Most Cases
sql
Copy
Edit
SELECT City, COUNT(*) AS TotalCases
FROM RapeCases
GROUP BY City
ORDER BY TotalCases DESC
LIMIT 3;
6. Descriptions of All Convicted Cases
sql
Copy
Edit
SELECT CaseDescription
FROM RapeCases
WHERE CaseStatus = 'Convicted';
📈 Possible Extensions
Add time-to-resolution analysis
State-wise heatmaps in visualization tools like Power BI or Tableau
Integrate socio-economic factors for deeper insights

