SELECT CITY.NAME FROM CITY
INNER JOIN (COUNTRY.CODE = CITY.COUNTRYCODE) & (COUNTRY.CONTINENT = 'Africa');
