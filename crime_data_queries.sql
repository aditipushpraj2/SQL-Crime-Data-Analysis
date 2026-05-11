CREATE TABLE crime_data (
    dr_no BIGINT PRIMARY KEY,
    date_rptd DATE,
    date_occ DATE,
    time_occ INT,
    area INT,
    area_name VARCHAR(100),
    rpt_dist_no INT,
    part_1_2 INT,
    crm_cd INT,
    crm_cd_desc VARCHAR(255),
    mocodes VARCHAR(255),
    vict_age INT,
    vict_sex VARCHAR(10),
    vict_descent VARCHAR(10),
    premis_cd INT,
    premis_desc VARCHAR(255),
    weapon_used_cd INT,
    weapon_desc VARCHAR(255),
    status VARCHAR(10),
    status_desc VARCHAR(100),
    crm_cd_1 INT,
    crm_cd_2 INT,
    crm_cd_3 INT,
    crm_cd_4 INT,
    location VARCHAR(255),
    cross_street VARCHAR(255),
    lat DECIMAL(10,6),
    lon DECIMAL(10,6)
);


SELECT *
FROM crime_data

SELECT DISTINCT crm_cd_desc
FROM crime_data;

SELECT *
FROM crime_data
WHERE area_name = 'Central';

SELECT COUNT(*) as total_count
FROM crime_data

SELECT area_name
FROM crime_data
GROUP BY  area_name;

SELECT *
FROM crime_data
WHERE'weapon_desc' IS NOT NULL

SELECT *
FROM crime_data
WHERE vict_age>50;

SELECT vict_sex, COUNT(*) AS total_crimes
FROM crime_data
GROUP BY vict_sex

SELECT crm_cd_desc, COUNT(*) AS total_cases
FROM crime_data
GROUP BY crm_cd_desc
ORDER BY total_cases DESC;

SELECT *
FROM crime_data
WHERE time_occ >2000

SELECT *
FROM crime_data
WHERE'premis_cd' LIKE '%SINGLE FAMILY%';

SELECT AVG (vict_age)
FROM crime_data

SELECT *
FROM crime_data
WHERE  cross_street IS NULL

SELECT status_desc, COUNT(*) AS total_cases
FROM crime_data
GROUP BY status_desc;

SELECT crm_cd_desc
FROM crime_data
WHERE area_name='Southwest'

SELECT *
FROM crime_data
ORDER BY vict_age DESC

SELECT MIN(vict_age) AS youngest_victim
FROM crime_data;

SELECT *
FROM crime_data
WHERE 'weapon_desc' LIKE '%STRONG-ARM%';

SELECT premis_desc, COUNT(*) AS total_cases
FROM crime_data
GROUP BY premis_desc;

SELECT *
FROM crime_data
WHERE EXTRACT(YEAR FROM date_rptd) = 2020;

SELECT area_name, COUNT(*) AS total_crimes
FROM crime_data
GROUP BY area_name
ORDER BY total_crimes DESC
LIMIT 5;


