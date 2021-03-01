UPDATE employees 
INNER JOIN countries ON countries.id = employees.country_id 
INNER JOIN continents ON continents.id = countries.continent_id 
SET employees.salary = employees.salary + ((employees.salary * continents.anual_adjustment) / 100) 
WHERE employees.salary <= 5000;