-- Task 1:
-- Choose the five most populous countries and list their names and population numbers.

-- Solution:

    SELECT Name, Population
    FROM country
    ORDER BY Population DESC
    LIMIT 5;

-- Task 2:
-- Select the number of states with their government form(GovernmentForm) that have a life expectancy higher than 76 years.

-- Solution:
   
    SELECT GovernmentForm AS "Government Form", 
    COUNT(GovernmentForm) AS "Number of states", 
    LifeExpectancy AS "Life Expectancy" 
    FROM country 
    WHERE LifeExpectancy > 76 
    GROUP BY GovernmentForm;

-- Task 3:
-- Find out the name of state and region(District) where is located the city 'Serravalle' (city and country tables). 

-- Solution:

    SELECT country.Name, city.District 
    FROM city 
    JOIN country ON city.CountryCode = country.Code 
    WHERE city.Name = "Serravalle";


-- Task 4:
-- Select cities in states where first letter is 'Z'.

-- Solution:

    SELECT city.Name AS City, country.Name AS State 
    FROM city 
    JOIN country ON city.CountryCode = country.Code 
    WHERE country.Name LIKE "Z%";

-- Task 5:
-- Select all language in continent Africa.

-- Solution:

    SELECT DISTINCT countrylanguage.Language 
    FROM country 
    JOIN countrylanguage ON country.Code = countrylanguage.CountryCode 
    WHERE Continent = "Africa" 
    ORDER BY countrylanguage.Language;

-- Task 6:
-- Select number of people with language 'Spanish' in country 'USA'.

-- Solution:
    
    SELECT Name AS State, Population * (
        SELECT Percentage FROM countrylanguage WHERE CountryCode = 'USA' AND Language = 'Spanish') / 100 AS "Population with Spanish language"
    FROM country WHERE code = 'USA';


-- Task 7:
-- Select all cities in countries with government form 'Constitutional Monarchy'.

-- Solution:

    SELECT city.Name, country.Name
    FROM country, city
    WHERE country.Code = city.CountryCode
        AND country.GovernmentForm = 'Constitutional Maonarchy';
