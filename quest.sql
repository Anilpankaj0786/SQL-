use world;
select * from city ;
select * from country ;

-- select name , district from city where district not like '%noord%';

-- select co.name,count(*) from city c 
-- join country co where c.countrycode=co.code
-- and co.population > 150000
-- group by co.name


-- select countrycode , district , count(name)from city group by countrycode , district having count(name)>2;


select co.name, c.countrycode,c.name ,co.population from city c 
join country co where c.countrycode=co.code
and co.population > 50000

-- quest 1 find the city name and country name where country population is greater than 50000
SELECT city.Name , country.Name 
FROM city
JOIN country ON city.CountryCode = country.Code
WHERE country.Population > 50000;

-- quest2 get the district and the total populaton for each country
SELECT country.Name AS CountryName,city.District,
SUM(city.Population) AS TotalPopulation
FROM city
JOIN country ON city.CountryCode = country.Code
GROUP BY country.Name, city.District
-- ORDER BY country.Name, city.District;

-- quest3 get the total number of country present in each continents having the indepence year after 1920
SELECT Continent,COUNT(*) AS TotalCountries
FROM country
WHERE IndepYear > 1920
GROUP BY Continent

-- quest 4 get the avg surface area the total population avg life expectancy and total no. of continents available for each region
SELECT Region,
AVG(SurfaceArea) AS AvgSurfaceArea,
SUM(Population) AS TotalPopulation,
AVG(LifeExpectancy) AS AvgLifeExpectancy,
COUNT(DISTINCT Continent) AS TotalContinents
FROM country
GROUP BY Region 



