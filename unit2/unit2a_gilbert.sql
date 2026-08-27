SELECT full_name, city
FROM teams
WHERE state = 'Ohio';

SELECT full_name, year_founded
FROM teams
ORDER BY year_founded DESC; 

SELECT full_name AS team, year_founded AS founded
FROM teams;

-- SELECT COUNT(*) FROM teams WHERE state = 'Ohio';

SELECT full_name, year_founded
FROM teams
WHERE year_founded < 1950
ORDER BY year_founded ASC;

SELECT full_name, year_founded
FROM teams
ORDER BY year_founded ASC;

SELECT full_name, year_founded
FROM teams
ORDER BY year_founded DESC
LIMIT 5;

SELECT full_name, year_founded FROM teams ORDER BY year_founded ASC LIMIT 1;