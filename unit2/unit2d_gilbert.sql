-- =====================================================================
-- Unit 2d — Counting and Summarizing
-- Database Applications Development · MCCC
--
-- Database: nba_5seasons.db · Tables: teams, players, team_game_stats
--
-- Rename this file with your last name before you start.
--
-- Read unit2d_Walkthrough.md first. Stuck on syntax? See unit2_StudyGuide.md.
-- =====================================================================


-- 1. How many teams are in the database?
select COUNT(*) AS team_count
from teams; 

-- 2. How many players?
        select COUNT(*) AS player_count
        from players;

-- 3. What is the earliest founding year of any team?
    select MIN(year_founded) AS earliest_year
    from teams;

-- 4. What is the most recent?
    select MAX(year_founded) AS most_recent_year
    from teams;

-- 5. What is the average founding year, rounded to a whole number?
    select ROUND(AVG(year_founded)) AS average_year
    from teams;

-- 6. What is the total number of points scored across every game in
--    the database?


-- =====================================================================
-- CHECK YOUR WORK
-- =====================================================================

-- Query 6 reads 10,842 rows and gives you one number. What is it?


-- COUNT(*) counts rows. What does COUNT(birth_year) count instead?


-- =====================================================================
-- VOCABULARY — your words, not the reference sheet's
-- =====================================================================

-- Aggregate function: