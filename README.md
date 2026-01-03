# Advanced-SQL-Practice-Database
A comprehensive set of SQL tables, sample data, and practice queries designed for learning advanced SQL concepts including window functions, CTEs, complex joins, and query optimization.

# Database Schema
Core Tables
Table Name	Description	Key Columns
Applicants	Main applicant information	applicant_id, first_name, last_name, final_marks, status
Universities	University details	university_id, university_name, city, ranking
Technical_Skills	Technical skills per applicant	skill_id, applicant_id, skill_name, proficiency_level
Projects	Project portfolio items	project_id, applicant_id, project_name, project_type
Work_Experience	Work history	experience_id, applicant_id, company, position, duration_months
Status_History	Applicant status changes over time	history_id, applicant_id, status, change_date

# Quick Start
Create Database:

sql
CREATE DATABASE ApplicantTracking;
USE ApplicantTracking;
Run CREATE TABLE statements (in order from provided script)

Insert Sample Data (all INSERT statements provided)

Verify Setup:

sql
-- Check all tables loaded
SELECT 'Applicants' as table, COUNT(*) as rows FROM Applicants
UNION ALL SELECT 'Universities', COUNT(*) FROM Universities
UNION ALL SELECT 'Technical_Skills', COUNT(*) FROM Technical_Skills
UNION ALL SELECT 'Projects', COUNT(*) FROM Projects
UNION ALL SELECT 'Work_Experience', COUNT(*) FROM Work_Experience
UNION ALL SELECT 'Status_History', COUNT(*) FROM Status_History;

# Learning Objectives
Beginner → Intermediate → Advanced
Level	Focus	Example Queries
Beginner	Basic SELECT, WHERE, GROUP BY	Find all applicants from UCT with marks > 70%
Intermediate	JOINs, subqueries, aggregations	Applicants with projects and work experience
Advanced	Window functions, CTEs, optimization	Rank applicants within universities, running totals

# Practice Problems
Problem 1: Window Functions - Ranking
Rank applicants within their city by final marks, showing top 3 from each city.

## Problem 2: CTEs - Multi-step Analysis
Find applicants with above-average technical skills for their university.

## Problem 3: Complex Joins - Full Profiles
Create a comprehensive applicant profile with marks, skills count, projects count, and total work experience.

## Problem 4: Data Cleaning
Fix inconsistent name formatting (mixed case issues).

## Problem 5: Performance Optimization
Rewrite inefficient queries using proper indexes and join strategies.

Sample Solution: Window Functions
sql
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

Business Use Cases
1. Talent Analytics: Identify top candidates by multiple criteria
2. University Performance: Compare graduate quality across institutions
3. Skill Gap Analysis: Find missing skills in applicant pool
4. Hiring Pipeline: Track applicant progression through stages
5. Diversity Metrics: Analyze applicant demographics and origins

Data Quality Issues (Intentional)
- This dataset includes real-world problems to practice data cleaning:
- Inconsistent name casing ('thando' vs 'SIPHO')
- Mixed date formats
- Missing values (NULLs in various columns)
- Inconsistent phone number formatting
- Duplicate or conflicting skill entries

Learning Tips
- Start Simple: Master basic queries before advanced functions
- Test Incrementally: Build complex queries step by step
- Explain Your Queries: Use comments to document logic
- Compare Performance: Try different approaches to the same problem
- Use Real Data: Apply these techniques to your own projects

Resources
SQL Server Documentation
Mode Analytics SQL Tutorial
LeetCode SQL Problems
SQLZoo Interactive Practice













