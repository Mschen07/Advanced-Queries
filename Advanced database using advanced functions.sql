--Dataset: Project Dig
--Source: Khan Academy Project: More Advanced Queries Database
--Queried using: SQLite

/ I created a "SUPERBOWL RESULTS" DATABASE USING ADVANCED SELECT QUERIES  MAX, WHERE, WHEN, END, ELSE, SUM, 
AND VARIOUS CASE FUNCTIONS to OUTPUT GAME RESULTS, TOTAL POINTS, ATTENDANCE, AND  
GAME RATINGS BY YEAR. THIS DATABASE ALSO INCLUDES RE NAMING COLUMNS WITH AS , AND SORTING DATA BY CERTAIN CRITERIA /


CREATE TABLE superbowl_results
(id INTEGER PRIMARY KEY, "superbowl" TEXT, 
 "winner" TEXT, 
 "loser" TEXT, 
 "year" INTEGER, 
 "points scored" INTEGER, 
 attendance INTEGER);

INSERT INTO superbowl_results VALUES (1, "x", "packers", "vikings", 1905, 100, 17000);

INSERT INTO superbowl_results VALUES (2, "xi", "packers", "bears", 1906, 48, 10000);
INSERT INTO superbowl_results VALUES (3, "xii", "raiders", "falcons", 1907, 55, 50000);
INSERT INTO superbowl_results VALUES (4, "xiii", "patriots", "browns", 1908, 67, 65000);
INSERT INTO superbowl_results VALUES (5, "xiv", "rams", "dolphins", 1909, 25, 45000);
INSERT INTO superbowl_results VALUES (6, "xv", "saints", "bills", 1910, 41, 57000);
INSERT into superbowl_results VALUES (7, "xvi", "chiefs", "redskins", 1911, 26, 90000);
INSERT into superbowl_results VALUES (8, "xvii", "raiders", "bears", 1912, 30, 25000);
INSERT INTO superbowl_results VALUES (9, "xviii", "packers", "browns", 1913, 55, 75000);
INSERT INTO superbowl_results VALUES (10, "ixX", "lions", "chiefs", 1914, 12, 45000);
INSERT INTO superbowl_results VALUES (11, "xx", "packers", "jets", 1915, 55, 55000);
INSERT INTO superbowl_results VALUES (12, "xxi", "cowboys", "bills", 1916, 28, 67000);
INSERT INTO superbowl_results VALUES (13, "xxii", "eagles", "chargers", 1917, 44, 35000);
INSERT INTO superbowl_results VALUES (14, "xxiii", "giants", "bengals", 1918, 30, 87000);
INSERT INTO superbowl_results VALUES (15, "xxiv", "ravens", "lions", 1919, 60, 90000);
INSERT INTO superbowl_results VALUES (16, "xxv", "patriots", "cowboys", 1920, 48, 83000);
INSERT INTO superbowl_results VALUES (17, "xxvi", "colts", "rams", 1921, 33, 82000);
INSERT INTO superbowl_results VALUES (18, "xxvii", "packers", "chargers", 1922, 54, 61000);
INSERT INTO superbowl_results VALUES (19, "xxviii", "49ers", "dolphins", 1923, 48, 67000);
INSERT INTO superbowl_results VALUES (20, "xvix", "bears", "packers", 1924, 36, 80000);

SELECT * FROM superbowl_results;

SELECT winner FROM superbowl_results;

SELECT * FROM superbowl_results ORDER BY "points scored";

SELECT MAX("points scored") AS highest_points_scored  FROM superbowl_results;

SELECT winner, loser,  SUM( "attendance" ) AS total_attendance 
FROM superbowl_results GROUP BY winner HAVING total_attendance > 1000  ;

SELECT superbowl, winner FROM superbowl_results WHERE "attendance" > 27000 - 10000;

SELECT   COUNT (*), 
CASE
WHEN attendance > 30000 THEN "good crowd"
WHEN attendance > 50000 THEN "best crowd"
 ELSE "bad crowd"
END "crowd ratings" 
FROM superbowl_results 
GROUP BY "crowd ratings";


SELECT winner, attendance,  COUNT (*) AS "good attendance games" 
FROM superbowl_results 
WHERE attendance > 50000 GROUP BY winner ;

SELECT loser FROM superbowl_results ;

SELECT  COUNT (*),
    CASE
WHEN "points scored" > 20 THEN "bad game"
WHEN "points scored" > 30 THEN "decent game"
WHEN "points scored" > 45 THEN "ok game"
ELSE "amazing game"
END "fan ratings"
FROM superbowl_results
GROUP BY "fan ratings";

SELECT winner, loser FROM superbowl_results 
WHERE attendance > 50000 AND "points scored" > 50 ;

SELECT winner, loser,  sum( "points scored" )
AS total_points FROM superbowl_results GROUP BY winner;