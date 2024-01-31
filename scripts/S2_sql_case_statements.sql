SELECT county, population
FROM population
WHERE year = 2017;

SELECT county, population,
	CASE WHEN population >= 500000 THEN 'high population'
	WHEN population <= 100000 THEN 'low population'
	ELSE 'medium population' END pop_category
FROM population
WHERE year = 2017;

SELECT company, landed, new_jobs, project_type,
	CASE WHEN new_jobs < 50 THEN 'small startup'
		 WHEN new_jobs <= 100 THEN 'midsize startup'
		 WHEN new_jobs > 100 THEN 'large startup' END AS startup_size
FROM ecd
WHERE project_type ILIKE 'New Startup';

Select SUM(CASE WHEN year = 2010 THEN population END) AS pop_2010,
       SUM(CASE WHEN year = 2017 THEN population END) AS pop_2017	   
FROM population