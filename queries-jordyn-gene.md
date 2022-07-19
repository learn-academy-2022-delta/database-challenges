<!-- Challenges: SQL Country Database
Save your queries in a file if you want to keep them for posterity.
WHERE
What is the population of the US? (HINT: 278357000)
What is the area of the US? (HINT: 9.36352e+06)
SELECT name,population, surfacearea 
FROM country
WHERE code = 'USA'
Which countries gained their independence before 1963?
SELECT name,indepyear
FROM country
WHERE indepyear < 1963
List the countries in Africa that have a population smaller than 30,000,000 and a life expectancy of more than 45? (HINT: 37 entries)
SELECT name, population, lifeexpectancy
FROM country
WHERE population < 3e7
AND continent = 'Africa'
AND lifeexpectancy > 45
Which countries are something like a republic? (HINT: Are there 122 or 143?)
143
SELECT name, governmentform
FROM country
WHERE governmentform LIKE '%Republic'
Which countries are some kind of republic and achieved independence after 1945? (HINT: 92 entries)
SELECT name, governmentform, indepyear
FROM country
WHERE governmentform LIKE '%Republic'
AND indepyear > 1945
Which countries achieved independence after 1945 and are not some kind of republic? (HINT: 27 entries)
SELECT name, governmentform, indepyear
FROM country
WHERE governmentform NOT LIKE '%Republic'
AND indepyear > 1945
ORDER BY
Which fifteen countries have the lowest life expectancy? (HINT: starts with Zambia, ends with Sierra Leonne)
SELECT name, lifeexpectancy
FROM country
ORDER BY lifeexpectancy
LIMIT 15
Which fifteen countries have the highest life expectancy? (HINT: starts with Andorra, ends with Spain)
SELECT name, lifeexpectancy
FROM country
WHERE lifeexpectancy IS NOT null
ORDER BY lifeexpectancy DESC
LIMIT 15
Which five countries have the lowest population density (density = population / surfacearea)? (HINT: starts with Greenland)
SELECT name,
population/surfacearea AS density
FROM country
WHERE population > 0
ORDER BY density
LIMIT 5
Which countries have the highest population density?(HINT: starts with Macao)
SELECT name,
population/surfacearea AS density
FROM country
WHERE population > 0
ORDER BY density DESC
LIMIT 5
Which is the smallest country by area? (HINT: .4)
SELECT name,surfacearea
FROM country
ORDER BY surfacearea
LIMIT 1
Which is the smallest country by population? (HINT: 50)?
Pitcairn
SELECT name,population
FROM country
WHERE population > 0
ORDER BY population
LIMIT 1
Which is the biggest country by area? (HINT: 1.70754e+07)
Russia
SELECT name,surfacearea
FROM country
ORDER BY surfacearea DESC
LIMIT 1
Which is the biggest country by population? (HINT: 1277558000)
China
SELECT name,population
FROM country
ORDER BY population DESC
LIMIT 1
Who is the most influential head of state measured by population? (HINT: Jiang Zemin)
SELECT name,population,headofstate
FROM country
ORDER BY population DESC
Subqueries: WITH
Of the countries with the top 10 gnp, which has the smallest population? (HINT: Canada)
WITH populated_countries AS (
	SELECT name, population, gnp
	FROM country
	WHERE population > 0
    ORDER BY gnp DESC
    LIMIT 10
	)
SELECT name, population, gnp
FROM populated_countries
ORDER BY population 
LIMIT 1;
Of the 10 least populated countries with permament residents (a non-zero population), which has the largest surfacearea? (HINT: Svalbard and Jan Mayen)
WITH populated_countries AS (
	SELECT name, population, surfacearea
	FROM country
	WHERE population > 0
    ORDER BY population
    LIMIT 10
	)
SELECT name, population, surfacearea
FROM populated_countries
ORDER BY surfacearea DESC
Aggregate Functions: GROUP BY
Which region has the highest average gnp? (HINT: North America)
SELECT region, AVG(gnp)
FROM country
GROUP BY region
ORDER BY AVG DESC
Who is the most influential head of state measured by surface area? (HINT: Elisabeth II) 
//looking outside of just a country; include commonwealths, territories, etc.
//Using SUM calculated the surfacearea of all territories and returned the head of state in descending order by greatest surface area ruled over.
SELECT headofstate, SUM(surfacearea)
FROM country
GROUP BY headofstate
ORDER BY sum DESC
//THis gave us how many territorries each person was head of in Descending order
SELECT headofstate, COUNT(surfacearea)
FROM country
GROUP BY headofstate
ORDER BY COUNT DESC
//This shows where she is headofstate.
SELECT name, headofstate 
FROM country
WHERE headofstate = 'Elisabeth II'
What is the average life expectancy for all continents?
SELECT continent, AVG(lifeexpectancy)
FROM country
GROUP BY continent
ORDER BY avg 
What are the most common forms of government? (HINT: use count(*))
SELECT governmentform, COUNT(*)
FROM country
GROUP BY governmentform
ORDER BY count DESC
How many countries are in North America?
SELECT region, COUNT(name)
FROM country
WHERE region='North America'
GROUP BY region
What is the total population of all continents?
SELECT continent, SUM(population)
FROM country
GROUP BY continent
ORDER BY sum
Stretch Challenges
Which countries have the letter ‘z’ in the name? 
How many? 13
SELECT name, COUNT(name)
FROM country
WHERE name LIKE '%z%'
GROUP BY name
ORDER BY count
Of the smallest 10 countries by area, which has the biggest gnp? (HINT: Macao)
Of the smallest 10 countries by population, which has the biggest per capita gnp?
Of the biggest 10 countries by area, which has the biggest gnp?
Of the biggest 10 countries by population, which has the biggest per capita gnp?
What is the sum of surface area of the 10 biggest countries in the world? The 10 smallest?
What year is this country database from? Cross reference various pieces of information to determine the age of this database. -->