CREATE SCHEMA USA;

USE USA;

CREATE TABLE cities (
  city_name VARCHAR(255),
  state VARCHAR(255),
  population INT
);

INSERT INTO cities (city_name, state, population)
VALUES 
  ('New York City', 'New York', 8398748),
  ('Los Angeles', 'California', 3990456),
  ('Chicago', 'Illinois', 2705994);

CREATE TABLE countries (
  country_name VARCHAR(255),
  continent VARCHAR(255),
  population INT,
  surface_area INT
);

INSERT INTO countries (country_name, continent, population, surface_area)
VALUES 
  ('USA', 'North America', 328200000, 9833520),
  ('Canada', 'North America', 37742154, 9984670),
  ('Phoenix', 'Arizona', 1680992),
  ('Philadelphia', 'Pennsylvania', 1584064),
  ('San Antonio', 'Texas', 1547253),
  ('San Diego', 'California', 1425976),
  ('Dallas', 'Texas', 1343573),
  ('San Jose', 'California', 1030119),
  ('Austin', 'Texas', 964254),
  ('Jacksonville', 'Florida', 903889),
  ('Fort Worth', 'Texas', 895008),
  ('Columbus', 'Ohio', 898553),
  ('San Francisco', 'California', 883305),
  ('Charlotte', 'North Carolina', 885708),
  ('Indianapolis', 'Indiana', 877335),
  ('Seattle', 'Washington', 744955),
  ('Denver', 'Colorado', 727211),
  ('Washington', 'District of Columbia', 705749),
  ('Boston', 'Massachusetts', 694583),
  ('Nashville', 'Tennessee', 689007),
  ('El Paso', 'Texas', 681124),
  ('Detroit', 'Michigan', 673104),
  ('Memphis', 'Tennessee', 651073),
  ('Portland', 'Oregon', 654741),
  ('Oklahoma City', 'Oklahoma', 649021),
  ('Las Vegas', 'Nevada', 644644),
  ('Louisville', 'Kentucky', 620118),
  ('Baltimore', 'Maryland', 602495),
  ('Milwaukee', 'Wisconsin', 581368),
  ('Albuquerque', 'New Mexico', 545852),
  ('Tucson', 'Arizona', 548073),
  ('Fresno', 'California', 530093),
  ('Mesa', 'Arizona', 508958),
  ('Sacramento', 'California', 508529),
  ('Atlanta', 'Georgia', 498715),
  ('Kansas City', 'Missouri', 495327),
  ('Colorado Springs', 'Colorado', 478221),
  ('Miami', 'Florida', 463347),
  ('Raleigh', 'North Carolina', 464758),
  ('Omaha', 'Nebraska', 446970),
  ('Long Beach', 'California', 462628),
  ('Virginia Beach', 'Virginia', 449974),
  ('Oakland', 'California', 429082),
  ('Minneapolis', 'Minnesota', 429606),
  ('Tulsa', 'Oklahoma', 400669),
  ('Wichita', 'Kansas', 389255),
  ('New Orleans', 'Louisiana', 391006),
  ('Arlington', 'Texas', 392772),
  ('Tampa', 'Florida', 392890),
  ('Honolulu', 'Hawaii', 345064),
  ('Aurora', 'Colorado', 374114),
  ('Anaheim', 'California', 352497),
  ('Santa Ana', 'California', 332725),
  ('Brazil', 'South America', 211000000, 8515767);

CREATE TABLE countrylanguage (
  country_code VARCHAR(3),
  language VARCHAR(255),
  is_official BOOLEAN,
  percentage FLOAT
);

INSERT INTO countrylanguage (country_code, language, is_official, percentage)
VALUES 
  ('USA', 'English', TRUE, 79.1),
  ('USA', 'Spanish', FALSE, 12.8),
  ('Canada', 'English', TRUE, 58.1),
  ('Canada', 'French', TRUE, 22.8),
  ('Brazil', 'Portuguese', TRUE, 100.0);

SELECT COUNT(*) FROM cities WHERE state = 'USA';

SELECT * FROM cities WHERE city_name LIKE 'C%' LIMIT 25;

SELECT COUNT(*) FROM countries;

SELECT country_name, surface_area FROM countries ORDER BY surface_area DESC LIMIT 10;

SELECT DISTINCT language FROM countrylanguage;
