CREATE DATABASE UniDB;
USE UniDB;

CREATE TABLE Applicants (
    applicant_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(100),
    phone VARCHAR(20),
    university_id INT,
    degree_program VARCHAR(100),
    graduation_year INT,
    final_marks DECIMAL(5,2),
    application_date DATE,
    status VARCHAR(50)
);

CREATE TABLE Universities (
    university_id INT PRIMARY KEY,
    university_name VARCHAR(100),
    city VARCHAR(50),
    ranking_sa INT,
    type VARCHAR(50) 
);

CREATE TABLE Technical_Skills (
    skill_id INT PRIMARY KEY,
    applicant_id INT,
    skill_name VARCHAR(50),
    proficiency_level VARCHAR(20), 
    years_experience DECIMAL(3,1)
);

CREATE TABLE Projects (
    project_id INT PRIMARY KEY,
    applicant_id INT,
    project_name VARCHAR(100),
    project_type VARCHAR(50),
    tech_stack TEXT,
    completion_date DATE,
    github_url VARCHAR(200)
);

CREATE TABLE Work_Experience (
    experience_id INT PRIMARY KEY,
    applicant_id INT,
    company VARCHAR(100),
    position VARCHAR(100),
    start_date DATE,
    end_date DATE,
    duration_months INT,
    description TEXT
);

CREATE TABLE Status_History (
    history_id INT PRIMARY KEY,
    applicant_id INT,
    status VARCHAR(50),
    status_date DATE,
    notes TEXT
);

INSERT INTO Universities VALUES
(1, 'University of Cape Town', 'Cape Town', 1, 'Research'),
(2, 'University of Witwatersrand', 'Johannesburg', 2, 'Research'),
(3, 'Stellenbosch University', 'Stellenbosch', 3, 'Research'),
(4, 'University of Johannesburg', 'Johannesburg', 4, 'Comprehensive'),
(5, 'University of Pretoria', 'Pretoria', 5, 'Traditional'),
(6, 'North-West University', 'Potchefstroom', 6, 'Traditional'),
(7, 'University of KwaZulu-Natal', 'Durban', 7, 'Comprehensive'),
(8, 'Rhodes University', 'Grahamstown', 8, 'Traditional');

INSERT INTO Applicants VALUES
(1001, 'thando', 'nkosi', 'thando.n@email.com', '+27-11-555-1001', 1, 'BSc Statistics', 2024, 78.5, '2024-01-15', 'Shortlisted'),
(1002, 'James', 'Smith', 'jsmith@mail.co.za', '0835551002', 2, 'BCom Informatics', 2024, 65.0, '2024-01-16', 'Under Review'),
(1003, 'Precious', 'van der Merwe', 'precious.v@student.sun.ac.za', '+27-21-555-1003', 3, 'BSc Computer Science', 2023, 89.0, '2024-01-10', 'Top Candidate'),
(1004, 'SIPHO', 'Williams', 'sipho.w@email.com', '072 555 1004', 4, 'Data Science BSc', 2024, 58.0, '2024-01-18', 'Under Review'),
(1005, 'Lerato', 'Jacobs', 'LJacobs@businessmail.com', '0115551005', 1, 'BCom Economics', 2024, 72.3, '2024-01-20', 'On Hold'),
(1006, 'Kagiso', 'Brown', 'k.brown@nwu.ac.za', '0185551006', 6, 'BSc Mathematics', 2023, 81.2, '2024-01-12', 'Shortlisted'),
(1007, 'anathi', 'davis', 'a.davis@ru.ac.za', '046-555-1007', 8, 'BSc Information Technology', 2024, 63.7, '2024-01-22', 'Under Review'),
(1008, 'Michael', 'Ndlovu', 'm.ndlovu@up.ac.za', '012 555 1008', 5, 'BEng Industrial', 2024, 90.0, '2024-01-14', 'Top Candidate'),
(1009, 'Zinhle', 'Taylor', 'z.taylor@mail.com', '0515551009', 6, 'BCom Accounting', 2024, 55.5, '2024-01-24', 'Rejected'),
(1010, 'David', 'Molefe', 'david.m@uct.ac.za', '021-555-1010', 1, 'BSc Actuarial Science', 2024, 85.0, '2024-01-11', 'Top Candidate'),
(1011, 'Nomfundo', 'Khumalo', 'n.khumalo@wits.ac.za', '083 555 1011', 2, 'BSc Data Science', 2024, 68.4, '2024-01-19', 'Shortlisted'),
(1012, 'LIAM', 'O''Brien', 'liam.obrien@uj.ac.za', '011-555-1012', 4, 'BCom Finance', 2023, 74.8, '2024-01-13', 'On Hold'),
(1013, 'Amahle', 'Patel', 'a.patel@sun.ac.za', '0215551013', 3, 'BSc Statistics', 2024, 92.1, '2024-01-09', 'Top Candidate'),
(1014, 'siya', 'Johnson', 's.johnson@uct.ac.za', '021 555 1014', 1, 'BSc IT', 2024, 61.9, '2024-01-21', 'Shortlisted'),
(1015, 'Emma', 'van Heerden', 'e.vanheerden@nwu.ac.za', '018-555-1015', 6, 'BCom Marketing', 2024, 70.0, '2024-01-23', 'Under Review');

INSERT INTO Technical_Skills VALUES
(1, 1001, 'SQL', 'Advanced', 2.5),
(2, 1001, 'Python', 'Intermediate', 1.5),
(3, 1001, 'Excel', 'Expert', 3.0),
(4, 1002, 'SQL', 'Intermediate', 1.0),
(5, 1002, 'Excel', 'Advanced', 2.0),
(6, 1003, 'SQL', 'Expert', 3.5),
(7, 1003, 'Python', 'Expert', 3.0),
(8, 1003, 'R', 'Advanced', 2.0),
(9, 1003, 'Excel', 'Expert', 3.0),
(10, 1004, 'SQL', 'Beginner', 0.5),
(11, 1004, 'Python', 'Beginner', 0.5),
(12, 1005, 'Excel', 'Expert', 2.5),
(13, 1005, 'Tableau', 'Intermediate', 1.0),
(14, 1006, 'Python', 'Intermediate', 1.5),
(15, 1006, 'Power BI', 'Advanced', 2.0),
(16, 1007, 'Excel', 'Beginner', 0.5),
(17, 1008, 'Python', 'Advanced', 2.5),
(18, 1008, 'Java', 'Intermediate', 1.5),
(19, 1009, 'Excel', 'Intermediate', 1.0),
(20, 1010, 'SQL', 'Expert', 3.0),
(21, 1010, 'Python', 'Expert', 3.5),
(22, 1010, 'Spark', 'Advanced', 1.5),
(23, 1011, 'Python', 'Intermediate', 1.0),
(24, 1012, 'Excel', 'Expert', 3.0),
(25, 1013, 'R', 'Expert', 3.0),
(26, 1013, 'Python', 'Advanced', 2.5),
(27, 1014, 'SQL', 'Advanced', 2.0),
(28, 1014, 'Python', 'Advanced', 2.0),
(29, 1015, 'Excel', 'Intermediate', 1.5);

INSERT INTO Projects VALUES
(1, 1001, 'Customer Segmentation Analysis', 'Academic', 'Python, Pandas, Scikit-learn', '2023-11-15', 'https://github.com/thando/cust-seg'),
(2, 1001, 'Sales Dashboard', 'Academic', 'Excel, Power BI', '2023-08-20', 'https://github.com/thando/sales-dash'),
(3, 1001, 'Database Design', 'Academic', 'SQL, PostgreSQL', '2023-10-05', NULL),
(4, 1003, 'ML Stock Predictor', 'Personal', 'Python, TensorFlow, Yahoo Finance API', '2023-12-10', 'https://github.com/precious/stock-ml'),
(5, 1003, 'University App', 'Hackathon', 'React, Node.js, MongoDB', '2023-09-18', 'https://github.com/precious/uni-app'),
(6, 1004, 'Data Cleaning Pipeline', 'Academic', 'Python, Pandas', '2023-11-30', 'https://github.com/sipho/data-clean'),
(7, 1004, 'Visualization Portfolio', 'Personal', 'Tableau, Excel', '2023-10-25', NULL),
(8, 1006, 'Math Tutoring Platform', 'Academic', 'Python, Flask', '2023-07-14', 'https://github.com/kagiso/math-tutor'),
(9, 1008, 'IoT Monitoring System', 'Academic', 'Python, Raspberry Pi, SQLite', '2023-12-05', 'https://github.com/michael/iot-monitor'),
(10, 1010, 'Risk Analysis Model', 'Academic', 'R, Shiny', '2023-11-20', 'https://github.com/david/risk-model'),
(11, 1010, 'Time Series Forecasting', 'Academic', 'Python, Prophet', '2023-09-30', NULL),
(12, 1011, 'Customer Churn Prediction', 'Academic', 'Python, Scikit-learn', '2023-10-15', 'https://github.com/nomfundo/churn-pred'),
(13, 1013, 'Statistical Analysis Package', 'Personal', 'R, C++', '2023-08-10', 'https://github.com/amahle/stats-pkg'),
(14, 1014, 'Hackathon Winner: Health App', 'Hackathon', 'Python, FastAPI, React Native', '2023-11-05', 'https://github.com/siya/health-app'),
(15, 1014, 'E-commerce Analytics', 'Personal', 'SQL, Python, Dash', '2023-12-18', NULL);

INSERT INTO Work_Experience VALUES
(1, 1001, 'DataFirst', 'Data Intern', '2023-06-01', '2023-11-30', 6, 'Assisted with data cleaning and report generation'),
(2, 1003, 'Amazon Web Services', 'Cloud Intern', '2023-01-15', '2023-12-15', 11, 'Worked on ML solutions lab projects'),
(3, 1005, 'Standard Bank', 'Business Analyst Intern', '2023-07-01', '2023-10-31', 4, 'Requirements gathering and process mapping'),
(4, 1006, 'North-West University', 'Math Tutor', '2022-02-01', '2023-11-30', 22, 'Tutored first-year mathematics students'),
(5, 1008, 'BMW South Africa', 'Engineering Intern', '2023-06-01', '2023-11-30', 6, 'Production line optimization using data analysis'),
(6, 1010, 'Old Mutual', 'Actuarial Intern', '2023-01-15', '2023-11-15', 10, 'Risk modeling and financial projections'),
(7, 1011, 'Takealot', 'E-commerce Intern', '2023-08-01', '2024-01-31', 6, 'Customer behavior analysis and reporting'),
(8, 1013, 'Stellenbosch University', 'Research Assistant', '2023-03-01', '2023-12-31', 10, 'Statistical analysis for psychology department'),
(9, 1014, 'Shoprite', 'IT Support', '2023-05-01', '2023-08-31', 4, 'Help desk and system maintenance');

INSERT INTO Status_History VALUES
(1, 1001, 'Application Received', '2024-01-15', 'Initial application'),
(2, 1001, 'Screening', '2024-01-18', 'Documents verified'),
(3, 1001, 'Shortlisted', '2024-01-22', 'Strong technical skills'),
(4, 1002, 'Application Received', '2024-01-16', 'Initial application'),
(5, 1002, 'Under Review', '2024-01-20', 'Awaiting reference checks'),
(6, 1003, 'Application Received', '2024-01-10', 'Initial application'),
(7, 1003, 'Shortlisted', '2024-01-12', 'Exceptional marks'),
(8, 1003, 'Top Candidate', '2024-01-15', 'Outstanding projects'),
(9, 1004, 'Application Received', '2024-01-18', 'Initial application'),
(10, 1004, 'Under Review', '2024-01-21', 'Evaluating project quality'),
(11, 1005, 'Application Received', '2024-01-20', 'Initial application'),
(12, 1005, 'On Hold', '2024-01-25', 'No project experience'),
(13, 1006, 'Application Received', '2024-01-12', 'Initial application'),
(14, 1006, 'Shortlisted', '2024-01-16', 'Good work experience'),
(15, 1008, 'Application Received', '2024-01-14', 'Initial application'),
(16, 1008, 'Top Candidate', '2024-01-17', 'Strong academic and work experience'),
(17, 1009, 'Application Received', '2024-01-24', 'Initial application'),
(18, 1009, 'Rejected', '2024-01-26', 'Below minimum marks requirement');

-- Rank applicants by marks in their city
SELECT 
    Applicants.applicant_id,
    Applicants.first_name,
    Applicants.last_name,
    Universities.city,
    Applicants.final_marks,
    RANK() OVER (PARTITION BY Universities.city ORDER BY Applicants.final_marks DESC) as city_rank
FROM Applicants
JOIN Universities ON Applicants.university_id = Universities.university_id;

-- Find applicants with above-average skills
WITH skill_counts AS (
    SELECT 
        Technical_Skills.applicant_id, 
        COUNT(*) as num_skills
    FROM Technical_Skills
    GROUP BY Technical_Skills.applicant_id
)
SELECT 
    Applicants.applicant_id,
    Applicants.first_name,
    Applicants.last_name,
    skill_counts.num_skills,
    (SELECT AVG(num_skills) FROM skill_counts) as average_skills
FROM Applicants
JOIN skill_counts ON Applicants.applicant_id = skill_counts.applicant_id
WHERE skill_counts.num_skills > (SELECT AVG(num_skills) FROM skill_counts)
ORDER BY skill_counts.num_skills DESC;

-- Calculate experience months from dates
SELECT 
    Applicants.applicant_id,
    Applicants.first_name + ' ' + Applicants.last_name as full_name,
    Universities.university_name,
    Applicants.final_marks,
    COUNT(DISTINCT Technical_Skills.skill_id) as skill_count,
    COUNT(DISTINCT Projects.project_id) as project_count,
    ISNULL(SUM(
        DATEDIFF(MONTH, 
            Work_Experience.start_date, 
            ISNULL(Work_Experience.end_date, GETDATE())
        )
    ), 0) as total_experience_months
FROM Applicants
JOIN Universities ON Applicants.university_id = Universities.university_id
LEFT JOIN Technical_Skills ON Applicants.applicant_id = Technical_Skills.applicant_id
LEFT JOIN Projects ON Applicants.applicant_id = Projects.applicant_id
LEFT JOIN Work_Experience ON Applicants.applicant_id = Work_Experience.applicant_id
GROUP BY 
    Applicants.applicant_id, 
    Applicants.first_name, 
    Applicants.last_name, 
    Universities.university_name, 
    Applicants.final_marks
ORDER BY Applicants.final_marks DESC;

-- Check everything loaded correctly 
SELECT 'Applicants' as table_name, COUNT(*) as row_count FROM Applicants
UNION ALL
SELECT 'Universities', COUNT(*) FROM Universities
UNION ALL
SELECT 'Technical_Skills', COUNT(*) FROM Technical_Skills
UNION ALL
SELECT 'Projects', COUNT(*) FROM Projects
UNION ALL
SELECT 'Work_Experience', COUNT(*) FROM Work_Experience
UNION ALL
SELECT 'Status_History', COUNT(*) FROM Status_History;

-- Fix inconsistent name formatting 
UPDATE Applicants
SET 
    Applicants.first_name = UPPER(LEFT(Applicants.first_name, 1)) + LOWER(SUBSTRING(Applicants.first_name, 2, LEN(Applicants.first_name))),
    Applicants.last_name = UPPER(LEFT(Applicants.last_name, 1)) + LOWER(SUBSTRING(Applicants.last_name, 2, LEN(Applicants.last_name)))
WHERE Applicants.applicant_id IN (
    SELECT Applicants.applicant_id 
    FROM Applicants
    WHERE Applicants.first_name COLLATE Latin1_General_CS_AS != UPPER(LEFT(Applicants.first_name, 1)) + LOWER(SUBSTRING(Applicants.first_name, 2, LEN(Applicants.first_name)))
);