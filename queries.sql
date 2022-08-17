select * from animals where name like '%mon'

SELECT name FROM animals WHERE EXTRACT(year FROM date_of_birth) BETWEEN 2016 AND 2019;

select name from animals where neutered=true and escape_attempts < 3

select date_of_birth from animals where name='Agumon' or name='Pikach';

select name , escape_attempts from animals where weight_kg > 10.5;

select * from animals where neutered=true;

select * from animals where name not like 'Gabumon';

select * from animals where weight_kg <=17.3 and weight_kg >= 10.4;

/* day-2 */

BEGIN
 update animals set species='unspecified';
 ROLLBACK


 BEGIN
 update animals set species='digimon' where name like '%mon'
 update animals set species='pokemon' where name not like '%mon'      
 commit 

 BEGIN
 delete from animals
  ROLLBACK


  BEGIN 
delete from animals where animals.date_of_birth > '2021-1-1';
SAVEPOINT sp1;
update animals set weight_kg = weight_kg * -1;
ROLLBACK to sp1
update animals set weight_kg = weight_kg * -1 where weight_kg < 0;
commit

select count(*) from animals;
select count(*) from animals where escape_attempts = 0;
select avg(weight_kg) from animals;
select avg(escape_attempts) from animals group by neutered;
select species ,min(weight_kg) , max(weight_kg) from animals GROUP by species;

select species, avg(escape_attempts) from animals
where date_of_birth > '1990-01-01' and date_of_birth < '2000-01-01'
group by species; 

-- day-3

SELECT full_name , name 
from owners o 
inner join animals a 
on a.owner_id = o.id 
where o.full_name='Melody Pond';

select s.name , a.name 
from species s 
Join animals a 
on a.species_id = s.id
where s.name = 'Pokemon';

select full_name , name 
from owners o 
left join animals a 
on a.owner_id = o.id;

SELECT s.name,count(*) as number 
from species s 
join animals a 
on a.species_id = s.id 
group by s.name;

select a.name , o.full_name, s.name as species 
from animals a 
join owners o ON o.id = a.owner_id
join species s ON s.id = a.species_id
where o.full_name='Jennifer Orwell' and s.name = 'Digimon';

select a.name from animals a
join owners o 
ON o.id = a.owner_id
where a.escape_attempts=0 and o.full_name='Dean Winchester';

select owners.full_name , count(*) 
from animals 
join owners 
on owners.id = animals.owner_id
group by owners.full_name
order by count desc
limit 1;

