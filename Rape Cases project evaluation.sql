CREATE DATABASE RapeCasesStudy;
USE RapeCasesStudy;

CREATE TABLE RapeCases (
    CaseID INT AUTO_INCREMENT PRIMARY KEY,
    CaseYear INT NOT NULL,
    VictimAge INT NOT NULL,
    SuspectAge INT NOT NULL,
    City VARCHAR(100) NOT NULL,
    State VARCHAR(100) NOT NULL,
    CaseStatus VARCHAR(50) NOT NULL,
    CaseDescription TEXT
);

INSERT INTO RapeCases (CaseYear, VictimAge, SuspectAge, City, State, CaseStatus, CaseDescription)
VALUES
(2019, 25, 30, 'Delhi', 'Delhi', 'Closed', 'Case closed with suspect convicted.'),
(2020, 18, 24, 'Mumbai', 'Maharashtra', 'Pending', 'Investigation ongoing.'),
(2021, 19, 28, 'Chennai', 'Tamil Nadu', 'Closed', 'Case resolved with conviction.'),
(2022, 21, 35, 'Kolkata', 'West Bengal', 'Convicted', 'Suspect sentenced to 10 years.'),
(2023, 30, 40, 'Bangalore', 'Karnataka', 'Pending', 'Awaiting court hearing.'),
(2024, 27, 32, 'Hyderabad', 'Telangana', 'Closed', 'Evidence led to quick resolution.'),
(2019, 22, 28, 'Jaipur', 'Rajasthan', 'Convicted', 'Case resulted in life imprisonment for suspect.'),
(2020, 17, 29, 'Pune', 'Maharashtra', 'Closed', 'Case closed with acquittal due to lack of evidence.'),
(2021, 20, 25, 'Ahmedabad', 'Gujarat', 'Pending', 'Trial ongoing in district court.'),
(2022, 23, 34, 'Lucknow', 'Uttar Pradesh', 'Convicted', 'Suspect found guilty in a high-profile case.'),
(2023, 19, 26, 'Surat', 'Gujarat', 'Pending', 'Police investigation underway.'),
(2024, 24, 31, 'Patna', 'Bihar', 'Closed', 'Case closed with a plea bargain.'),
(2019, 16, 22, 'Indore', 'Madhya Pradesh', 'Convicted', 'Suspect sentenced to 15 years in prison.'),
(2020, 18, 23, 'Nagpur', 'Maharashtra', 'Closed', 'Case resolved with court dismissal.'),
(2021, 25, 27, 'Chandigarh', 'Chandigarh', 'Pending', 'Evidence under review.'),
(2022, 30, 45, 'Guwahati', 'Assam', 'Convicted', 'Victim received justice through swift trial.'),
(2023, 29, 33, 'Pune', 'Maharashtra', 'Pending', 'Awaiting final court decision.'),
(2024, 26, 29, 'Kochi', 'Kerala', 'Closed', 'Case resolved via forensic evidence.'),
(2019, 20, 24, 'Ranchi', 'Jharkhand', 'Convicted', 'Case led to social reforms in local area.'),
(2020, 23, 28, 'Amritsar', 'Punjab', 'Closed', 'Suspect acquitted due to alibi.'),
(2021, 19, 26, 'Noida', 'Uttar Pradesh', 'Pending', 'High-profile investigation ongoing.'),
(2022, 22, 30, 'Bhopal', 'Madhya Pradesh', 'Convicted', 'Landmark case for women rights.'),
(2023, 18, 25, 'Vadodara', 'Gujarat', 'Pending', 'Under investigation with media attention.'),
(2024, 28, 36, 'Mysore', 'Karnataka', 'Closed', 'Case successfully prosecuted.'),
(2019, 24, 31, 'Shimla', 'Himachal Pradesh', 'Convicted', 'Suspect found guilty in a rural case.'),
(2020, 21, 27, 'Dehradun', 'Uttarakhand', 'Pending', 'Investigation stalled due to lack of evidence.'),
(2021, 19, 22, 'Jaipur', 'Rajasthan', 'Closed', 'Case concluded with compensation for victim.'),
(2022, 26, 38, 'Lucknow', 'Uttar Pradesh', 'Convicted', 'Case resolved with a life sentence.'),
(2023, 17, 21, 'Kanpur', 'Uttar Pradesh', 'Pending', 'Awaiting forensic report.'),
(2024, 29, 35, 'Mumbai', 'Maharashtra', 'Closed', 'Case concluded with court mediation.'),
(2019, 25, 40, 'Delhi', 'Delhi', 'Convicted', 'Suspect jailed for 20 years.'),
(2020, 18, 32, 'Chennai', 'Tamil Nadu', 'Pending', 'Case awaiting witness statements.'),
(2021, 23, 33, 'Hyderabad', 'Telangana', 'Closed', 'Investigation completed with acquittal.'),
(2022, 21, 29, 'Patna', 'Bihar', 'Convicted', 'Victim and family received justice.'),
(2023, 24, 34, 'Bangalore', 'Karnataka', 'Pending', 'Case linked to organized crime.'),
(2024, 30, 42, 'Chandigarh', 'Chandigarh', 'Closed', 'Quick resolution due to video evidence.'),
(2019, 19, 26, 'Pune', 'Maharashtra', 'Convicted', 'Case led to stronger local policies.'),
(2020, 20, 31, 'Kolkata', 'West Bengal', 'Pending', 'Suspect absconding; efforts underway.'),
(2021, 27, 37, 'Guwahati', 'Assam', 'Closed', 'Case resolved amicably in court.'),
(2022, 23, 28, 'Noida', 'Uttar Pradesh', 'Convicted', 'Conviction ensured by DNA evidence.'),
(2023, 22, 30, 'Indore', 'Madhya Pradesh', 'Pending', 'Awaiting trial scheduling.'),
(2024, 29, 33, 'Surat', 'Gujarat', 'Closed', 'Case concluded with full justice.'),
(2019, 18, 24, 'Ahmedabad', 'Gujarat', 'Convicted', 'Case involved multiple suspects.'),
(2020, 25, 38, 'Lucknow', 'Uttar Pradesh', 'Pending', 'Investigation delayed by bureaucratic issues.'),
(2021, 20, 28, 'Mumbai', 'Maharashtra', 'Closed', 'Quick trial led to acquittal.'),
(2022, 24, 34, 'Delhi', 'Delhi', 'Convicted', 'Case set precedent for future trials.'),
(2023, 17, 21, 'Bhopal', 'Madhya Pradesh', 'Pending', 'Awaiting court decision after chargesheet.'),
(2024, 26, 30, 'Chennai', 'Tamil Nadu', 'Closed', 'Case concluded with victim support services.');

-- Query 1 Total Cases by Year --
SELECT CaseYear, COUNT(*) AS TotalCases
FROM RapeCases
GROUP BY CaseYear;

-- Query 2 Cases by Status --
SELECT CaseStatus, COUNT(*) AS TotalCases
FROM RapeCases
GROUP BY CaseStatus;

-- Query 3 Pending Cases in 2024 --
SELECT * 
FROM RapeCases
WHERE CaseYear = 2024 AND CaseStatus = 'Pending'; 

-- Query 4 Average Victim Age --
SELECT AVG(VictimAge) AS AverageVictimAge
FROM RapeCases;

-- Query 5 Top 3 Cities with the Most Cases --
SELECT City, COUNT(*) AS TotalCases
FROM RapeCases
GROUP BY City
ORDER BY TotalCases DESC
LIMIT 3; 

-- Query 6 Case Description of All Convicted Cases --
SELECT CaseDescription
FROM RapeCases
WHERE CaseStatus = 'Convicted';