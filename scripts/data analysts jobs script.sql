SELECT county, population AS pop_category
FROM population;

SELECT county, population,
	CASE WHEN population >= 500000 THEN 'high population'
	WHEN population <= 100000 THEN 'low population'
	ELSE 'medium population' END pop_category
FROM population
WHERE year = 2017;

SELECT company, landed, new_jobs,
	CASE WHEN new_jobs <= 50 THEN 'small startup'
	WHEN new_jobs > 50 AND new_jobs < 100 THEN 'medium startup'
	WHEN new_jobs > 100 THEN 'large startup' END AS new_startup
FROM ecd;