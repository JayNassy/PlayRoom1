CREATE TABLE customer_orders (
  order_id INT PRIMARY KEY,
  customer_id INT NOT NULL,
  order_date DATE NOT NULL,
  total_amount DECIMAL(10,2) NOT NULL,
  status VARCHAR(20) NOT NULL
);

-- Create the countries table
CREATE TABLE countries (
  code CHAR(3) PRIMARY KEY,
  name VARCHAR(52) NOT NULL,
  continent VARCHAR(50) NOT NULL,
  region VARCHAR(26) NOT NULL,
  surface_area DECIMAL(10,2) NOT NULL,
  indep_year SMALLINT DEFAULT NULL,
  population INT NOT NULL,
  life_expectancy DECIMAL(3,1) DEFAULT NULL,
  gnp DECIMAL(10,2) DEFAULT NULL,
  gnp_old DECIMAL(10,2) DEFAULT NULL,
  local_name VARCHAR(45) NOT NULL,
  government_form VARCHAR(45) NOT NULL,
  head_of_state VARCHAR(60) DEFAULT NULL,
  capital INT DEFAULT NULL,
  code2 CHAR(2) NOT NULL
);

-- Create the countrylanguage table
CREATE TABLE countrylanguage (
  country_code CHAR(3) NOT NULL,
  language VARCHAR(30) NOT NULL,
  is_official BOOLEAN NOT NULL,
  percentage DECIMAL(4,1) NOT NULL,
  PRIMARY KEY (country_code, language)
);

SELECT COUNT(*) as city_count FROM cities WHERE country_code = 'USA';

SELECT name FROM cities WHERE name LIKE 'F%' LIMIT 25;

SELECT COUNT(*) as country_count FROM countries;

SELECT name, surface_area FROM countries ORDER BY surface_area DESC LIMIT 10;

SELECT DISTINCT language FROM countrylanguage;

SELECT language FROM countrylanguage WHERE country_code = 'USA';
