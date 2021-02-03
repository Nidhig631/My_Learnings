SQLZOO QUESTION
===============
1)Introducing the world table of countries
SELECT population FROM world WHERE name = 'Germany';
  
2)Show the name and the population for 'Sweden', 'Norway' and 'Denmark'
SELECT name, population FROM world WHERE name IN ('Sweden', 'Norway', 'Denmark');

3)Modify it to show the country and the area for countries with an area between 200,000 and 250,000.
SELECT name, area FROM world WHERE area BETWEEN 200000 AND 250000;

4)Observe the result of running this SQL command to show the name, continent and population of all countries.
SELECT name, continent, population FROM world;

5)Show the name for the countries that have a population of at least 200 million. 200 million is 200000000, there are eight zeros.
SELECT name FROM world WHERE population > 200000000

6)Give the name and the per capita GDP for those countries with a population of at least 200 million.
HELP:How to calculate per capita GDP
per capita GDP is the GDP divided by the population GDP/population
select name ,gdp/population from world where population > 200000000;

7)Show the name and population in millions for the countries of the continent 'South America'. Divide the population by 1000000 to get population in millions.
select name ,population/1000000 from world  where continent='South America';

8)Exclusive OR (XOR). Show the countries that are big by area (more than 3 million) or big by population (more than 250 million) but not both. Show name, population and area.
Australia has a big area but a small population, it should be included.
Indonesia has a big population but a small area, it should be included.
China has a big population and big area, it should be excluded.
United Kingdom has a small population and a small area, it should be excluded.
SELECT name, population,area
  FROM world
  WHERE
  (population>250000000 OR area>3000000)
  AND NOT(population>250000000 AND area>3000000);
