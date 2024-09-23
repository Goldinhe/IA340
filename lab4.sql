--Q4.1 
/* no, because we still have VA records in other tables */

--Q4.2

/*no, because no state has | fips of 80*/

--Q4.3
/* it works, but can be improved */

--Q4.5
/* yes, great job */

--Q4.6
WITH RecentYearIncome AS (
    -- Get the most recent year
    SELECT fips, income, year
    FROM income
    WHERE year = (SELECT MAX(year) FROM income)
)
-- Now, find the state with the highest income in the most recent year
SELECT n.name, r.income, r.year
FROM RecentYearIncome r
JOIN name n ON n.fips = r.fips
ORDER BY r.income DESC
LIMIT 1;

--Q4.7
/* it does not work. I tried to modify it but it still did not work */

--Q4.8
/* No, not always, sometimes we have to give detailed instructions to fix the results */




