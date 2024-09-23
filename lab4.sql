--Q4.1 
/* no, because we still have VA records in other tables */

--Q4.2

/*no, because no state has | fips of 80*/

--Q4.3
/* it works, but can be improved */

--Q4.5
/* yes, great job */

--Q4.6
SELECT n.name, r.income, r.year
FROM RecentYearIncome r
JOIN name n ON n.fips = r.fips
ORDER BY r.income DESC
LIMIT 1;

--Q4.7
/* it does not work. I tried to modify it but it still did not work */

--Q4.8
/* No, not always, sometimes we have to give detailed instructions to fix the results */




