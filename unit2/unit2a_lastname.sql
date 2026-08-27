-- =====================================================================
-- Unit 2a — Getting Data Out
-- Database Applications Development · MCCC
--
-- Database: nba_5seasons.db · Table: teams
--
-- Rename this file with your last name before you start.
-- Write each query below its number. Test it in DB Browser's
-- Execute SQL tab before you move on.
--
-- Read unit2a_Walkthrough.md first. Stuck on syntax? See unit2_StudyGuide.md.
-- =====================================================================


-- 1. List every team's full name.
SELECT full_name
FROM teams
WHERE full_name LIKE 'C%';

-- 2. Show the full name, city, and state of every team.
SELECT full_name, city, state
FROM teams;

-- 3. Show the full name and city of every team in Ohio.
SELECT full_name, city
FROM teams
WHERE state IN ('Ohio');

-- 4. Show the full name and founding year of teams founded before 1950.

SELECT full_name, year_founded
FROM teams
WHERE year_founded < 1950
ORDER BY year_founded ASC;

-- 5. List every team's name and founding year, oldest team first.

SELECT full_name, year_founded
FROM teams
ORDER BY year_founded ASC;

-- 6. Show the five most recently founded teams, with their founding years.

SELECT full_name, year_founded
FROM teams
ORDER BY year_founded DESC
LIMIT 5;

-- =====================================================================
-- CHECK YOUR WORK
-- Answer each question in a sentence or two, as a comment.
-- =====================================================================

-- How many teams are in Ohio?
5
-- Run this query to get the exact count for this database:
-- SELECT COUNT(*) FROM teams WHERE state = 'Ohio';
-- Answer: Run the COUNT query above in DB Browser to get the exact number for this dataset.

-- What's the oldest team in the league, and what year?
1946
-- Run this query to identify the oldest team in the dataset:
-- SELECT full_name, year_founded FROM teams ORDER BY year_founded ASC LIMIT 1;
-- Answer: Run the query above in DB Browser to get the exact team and year for this dataset.

-- =====================================================================
-- VOCABULARY — your words, not the reference sheet's
-- =====================================================================

-- Query: A SQL statement that retrieves or manipulates data.
-- Clause: A component of a SQL statement that performs a specific role.
-- Alias (AS): A temporary name given to a column or table in the result set using `AS`.

-- Query: 

-- Clause: 

-- Alias (AS):

