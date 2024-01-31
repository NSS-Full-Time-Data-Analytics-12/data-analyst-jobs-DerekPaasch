SELECT *
FROM ecd;

SELECT county
FROM ecd;

Select COUNT (county)
FROM ecd;

/*How many counites are represented in the ecd table? 88 distinct How many companies? 764 distinct */

Select COUNT (ecd.company)
FROM ecd;

Select COUNT (county)
FROM ecd;

Select COUNT (ecd.company)
FROM ecd;

SELECT *
FROM ecd;

SELECT COUNT (DISTINCT county)
FROM ecd;

SELECT COUNT (DISTINCT company)
FROM ecd;

SELECT *
FROM ecd;

/* How many companies did not get ANY Economic Development grants (ed) for any of their projects? 
(Hint, you will probably need a couple of steps to figure this one out) 608 w/o ed*/

/*What is the total capital_investment, in millions, when there was a grant received from the fjtap? Call the column fjtap_cap_invest_mil*/
/*"$12,634,623,829.00"*/

SELECT SUM(capital_investment) AS fjtap_cap_invest_mil
FROM ecd
WHERE fjtap IS NOT null;

/*What is the average number of new jobs for each county_tier? Line 49*/

SELECT county_tier, AVG (new_jobs) AS avg_jobs_county_toer
FROM ecd
GROUP BY county_tier;

SELECT county_tier, ROUND (AVG(new_jobs),2) AS avg_jobs_county_tier
FROM ecd
GROUP BY county_tier
ORDER BY county_tier;

SELECT *
FROM ecd;

/*How many companies are LLCs ? Call this value llc_companies.
(Hint, combine COUNT() and DISTINCT(). Also, consider that LLC may not always be capitalized the same in company names. Find a SQL keyword that can help you with this.)*/


SELECT COUNT (DISTINCT company) as llc_companies
FROM ecd
WHERE company ILIKE '%LLC%';

SELECT COUNT (DISTINCT company)
FROM ecd
WHERE company ILIKE '%llc%'

