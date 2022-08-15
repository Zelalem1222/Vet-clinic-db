select * from animals where name like '%mon'

select name from animals where date_of_birth between '2016-1-1' and '2019-1-1';

select name from animals where date_of_birth between '2016-1-1' and '2019-1-1';

select date_of_birth from animals where name='Agumon' or name='Pikach';

select name , escape_attempts from animals where weight_kg > 10.5;

select * from animals where neutered=true;

select * from animals where name not like 'Gabumon';

select * from animals where weight_kg <=17.3 and weight_kg >= 10.4;