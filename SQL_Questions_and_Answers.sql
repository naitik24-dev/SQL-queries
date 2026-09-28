-- SQL REVISION & IPL DATA ANALYSIS
-- 50 PRACTICE QUESTIONS WITH ANSWERS
-- Table: ipl
-- Focus: WHERE, ORDER BY, GROUP BY, HAVING, SUM, COUNT

-- Q1. Find all deliveries where batsman_run = 0.
SELECT * FROM ipl WHERE batsman_run = 0;

-- Q2. Find all deliveries where total_run is greater than 4.
SELECT * FROM ipl WHERE total_run > 4;

-- Q3. Find all deliveries where total_run = 6.
SELECT * FROM ipl WHERE total_run = 6;

-- Q4. Find all deliveries where batsman_run = 4.
SELECT * FROM ipl WHERE batsman_run = 4;

-- Q5. Find all deliveries where batsman_run = 6.
SELECT * FROM ipl WHERE batsman_run = 6;

-- Q6. Find all deliveries where total_run is between 1 and 3.
SELECT * FROM ipl WHERE total_run BETWEEN 1 AND 3;

-- Q7. Find deliveries where batsman_run is between 1 and 3.
SELECT * FROM ipl WHERE batsman_run BETWEEN 1 AND 3;

-- Q8. Find all deliveries where BattingTeam = 'Mumbai Indians'.
SELECT * FROM ipl WHERE BattingTeam = 'Mumbai Indians';

-- Q9. Find all deliveries from innings 1.
SELECT * FROM ipl WHERE innings = 1;

-- Q10. Find all wicket deliveries.
SELECT * FROM ipl WHERE isWicketDelivery = 1;

-- Q11. Display all deliveries sorted by total_run from highest to lowest.
SELECT * FROM ipl ORDER BY total_run DESC;

-- Q12. Display all deliveries sorted by batsman_run from lowest to highest.
SELECT * FROM ipl ORDER BY batsman_run ASC;

-- Q13. Display all deliveries sorted by extras_run from highest to lowest.
SELECT * FROM ipl ORDER BY extras_run DESC;

-- Q14. Display wicket deliveries sorted by total_run from highest to lowest.
SELECT * FROM ipl WHERE isWicketDelivery = 1 ORDER BY total_run DESC;

-- Q15. Display deliveries from innings 1 sorted by total_run from highest to lowest.
SELECT * FROM ipl WHERE innings = 1 ORDER BY total_run DESC;

-- Q16. Find total runs scored by each batting team.
SELECT BattingTeam, SUM(total_run) AS total_runs
FROM ipl GROUP BY BattingTeam;

-- Q17. Find number of deliveries faced by each batting team.
SELECT BattingTeam, COUNT(*) AS total_deliveries
FROM ipl GROUP BY BattingTeam;

-- Q18. Find total runs scored by each batter.
SELECT batter, SUM(batsman_run) AS total_runs
FROM ipl GROUP BY batter;

-- Q19. Find total runs conceded by each bowler using total_run.
SELECT bowler, SUM(total_run) AS total_runs_conceded
FROM ipl GROUP BY bowler;

-- Q20. Find number of wickets for each kind of dismissal.
SELECT kind, COUNT(*) AS total_wickets
FROM ipl WHERE isWicketDelivery = 1 GROUP BY kind;

-- Q21. Find number of deliveries for each bowler.
SELECT bowler, COUNT(*) AS total_deliveries
FROM ipl GROUP BY bowler;

-- Q22. Find total extras_run for each extra_type.
SELECT extra_type, SUM(extras_run) AS total_extras
FROM ipl GROUP BY extra_type;

-- Q23. Find number of deliveries for each BattingTeam and sort highest to lowest.
SELECT BattingTeam, COUNT(*) AS total_deliveries
FROM ipl GROUP BY BattingTeam ORDER BY total_deliveries DESC;

-- Q24. Find total runs scored by each team and sort highest to lowest.
SELECT BattingTeam, SUM(total_run) AS total_runs
FROM ipl GROUP BY BattingTeam ORDER BY total_runs DESC;

-- Q25. Find total batsman runs by each batter where batsman_run > 0.
SELECT batter, SUM(batsman_run) AS total_batsman_runs
FROM ipl WHERE batsman_run > 0 GROUP BY batter;

-- Q26. Find total runs scored by each batting team only for innings 1.
SELECT BattingTeam, SUM(total_run) AS total_runs
FROM ipl WHERE innings = 1 GROUP BY BattingTeam;

-- Q27. Find total runs scored by each batter when BattingTeam is RCB.
SELECT batter, SUM(batsman_run) AS total_runs
FROM ipl WHERE BattingTeam = 'Royal Challengers Bangalore' GROUP BY batter;

-- Q28. Find total batsman runs by each batter where batsman_run >= 4.
SELECT batter, SUM(batsman_run) AS boundary_runs
FROM ipl WHERE batsman_run >= 4 GROUP BY batter;

-- Q29. Find total runs scored by each team where overs >= 10.
SELECT BattingTeam, SUM(total_run) AS total_runs
FROM ipl WHERE overs >= 10 GROUP BY BattingTeam;

-- Q30. Find total runs scored by each team from deliveries where total_run > 0.
SELECT BattingTeam, SUM(total_run) AS total_runs
FROM ipl WHERE total_run > 0 GROUP BY BattingTeam;

-- Q31. Find batters whose total batsman_run is greater than 500.
SELECT batter, SUM(batsman_run) AS total_runs
FROM ipl GROUP BY batter HAVING SUM(batsman_run) > 500;

-- Q32. Find teams whose total runs are greater than 5000.
SELECT BattingTeam, SUM(total_run) AS total_runs
FROM ipl GROUP BY BattingTeam HAVING SUM(total_run) > 5000;

-- Q33. Find bowlers who have bowled more than 1000 deliveries.
SELECT bowler, COUNT(*) AS total_deliveries
FROM ipl GROUP BY bowler HAVING COUNT(*) > 1000;

-- Q34. Find batters who have faced more than 1000 deliveries.
SELECT batter, COUNT(*) AS total_deliveries
FROM ipl GROUP BY batter HAVING COUNT(*) > 1000;

-- Q35. Find teams whose total extras_run is greater than 300.
SELECT BattingTeam, SUM(extras_run) AS total_extras
FROM ipl GROUP BY BattingTeam HAVING SUM(extras_run) > 300;

-- Q36. Find wicket types having more than 100 wickets.
SELECT kind, COUNT(*) AS total_wickets
FROM ipl WHERE isWicketDelivery = 1 GROUP BY kind HAVING COUNT(*) > 100;

-- Q37. Find batters whose total batsman_run is greater than 1000.
SELECT batter, SUM(batsman_run) AS total_runs
FROM ipl GROUP BY batter HAVING SUM(batsman_run) > 1000;

-- Q38. Find batters with >300 runs, considering only batsman_run > 0.
SELECT batter, SUM(batsman_run) AS total_runs
FROM ipl WHERE batsman_run > 0 GROUP BY batter HAVING SUM(batsman_run) > 300;

-- Q39. Find teams whose total runs in innings 1 are greater than 5000.
SELECT BattingTeam, SUM(total_run) AS total_runs
FROM ipl WHERE innings = 1 GROUP BY BattingTeam HAVING SUM(total_run) > 5000;

-- Q40. Find bowlers who conceded >2000 runs, considering total_run > 0.
SELECT bowler, SUM(total_run) AS total_runs_conceded
FROM ipl WHERE total_run > 0 GROUP BY bowler HAVING SUM(total_run) > 2000;

-- Q41. Find teams with >1000 boundary runs where batsman_run is 4 or 6.
SELECT BattingTeam, SUM(batsman_run) AS boundary_runs
FROM ipl WHERE batsman_run IN (4, 6)
GROUP BY BattingTeam HAVING SUM(batsman_run) > 1000;

-- Q42. Find batters with >500 runs and sort highest to lowest.
SELECT batter, SUM(batsman_run) AS total_runs
FROM ipl GROUP BY batter
HAVING SUM(batsman_run) > 500 ORDER BY total_runs DESC;

-- Q43. Find teams that faced >5000 deliveries and sort descending.
SELECT BattingTeam, COUNT(*) AS total_deliveries
FROM ipl GROUP BY BattingTeam
HAVING COUNT(*) > 5000 ORDER BY total_deliveries DESC;

-- Q44. Find batters with >1000 runs, sorted highest to lowest.
SELECT batter, SUM(batsman_run) AS total_runs
FROM ipl GROUP BY batter
HAVING SUM(batsman_run) > 1000 ORDER BY total_runs DESC;

-- Q45. Find dismissal types with >100 wickets.
SELECT kind, COUNT(*) AS total_wickets
FROM ipl WHERE isWicketDelivery = 1
GROUP BY kind HAVING COUNT(*) > 100;

-- Q46. Find teams with >5000 total runs and sort descending.
SELECT BattingTeam, SUM(total_run) AS total_runs
FROM ipl GROUP BY BattingTeam
HAVING SUM(total_run) > 5000 ORDER BY total_runs DESC;

-- Q47. Find CSK batters with >500 runs, sorted highest to lowest.
SELECT batter, SUM(batsman_run) AS total_runs
FROM ipl WHERE BattingTeam = 'Chennai Super Kings'
GROUP BY batter HAVING SUM(batsman_run) > 500 ORDER BY total_runs DESC;

-- Q48. Find teams with >300 extras, sorted highest to lowest.
SELECT BattingTeam, SUM(extras_run) AS total_extras
FROM ipl GROUP BY BattingTeam
HAVING SUM(extras_run) > 300 ORDER BY total_extras DESC;

-- Q49. Find batters with >1000 deliveries, sorted highest to lowest.
SELECT batter, COUNT(*) AS total_deliveries
FROM ipl GROUP BY batter
HAVING COUNT(*) > 1000 ORDER BY total_deliveries DESC;

-- Q50. Find teams with >2000 runs from deliveries where batsman_run >= 4,
-- sorted descending.
SELECT BattingTeam, SUM(batsman_run) AS total_runs
FROM ipl WHERE batsman_run >= 4
GROUP BY BattingTeam HAVING SUM(batsman_run) > 2000
ORDER BY total_runs DESC;
