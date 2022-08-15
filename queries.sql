select * from animals where name like '%mon'

SELECT name FROM animals WHERE EXTRACT(year FROM date_of_birth) BETWEEN 2016 AND 2019;

select name from animals where neutered=true and escape_attempts < 3

select date_of_birth from animals where name='Agumon' or name='Pikach';

select name , escape_attempts from animals where weight_kg > 10.5;

select * from animals where neutered=true;

select * from animals where name not like 'Gabumon';

select * from animals where weight_kg <=17.3 and weight_kg >= 10.4;