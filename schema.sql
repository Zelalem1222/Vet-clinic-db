create table animals
   (id int4 GENERATED ALWAYS AS IDENTITY, 
     name VARCHAR(50) not NULL,
	 date_of_birth date,
	 escape_attempts int,
	 neutered BOOLEAN,
	 weight_kg decimal
   )
 
   /* day-2 */
   alter table animals add column species VARCHAR(50);

    -- day-3

   create table owners(
    id int generated always as identity PRIMARY key , 
    full_name VARCHAR(40),
    age int
    )

    create table species(
      id int GENERATED ALWAYS AS identity PRIMARY key, 
      name VARCHAR(30)
    )

      
   alter table animals add primary key(id);
   alter table animals drop COLUMN species;

   alter table animals add column species_id int;

   alter table animals 
   add constraint fk_species
   foreign key(species_id) 
   REFERENCES species(id) 
   on delete cascade;

   alter table animals add column owner_id int;

   alter table animals 
   add constraint fk_owner
   FOREIGN key(owner_id)
   REFERENCES owners(id)
   on delete cascade;

-- day-4

create table vets
  (id int generated always as identity PRIMARY key ,
	name varchar(40),
	age int ,
  date_of_graduation date 
				 );

 
create table specializations (
  vet_id int, 
	species_id int,
	FOREIGN key(vet_id)
	REFERENCES vets(id),
	FOREIGN key(species_id) 
	REFERENCES species(id)
 );

 create table visits(
  vet_id int, animal_id int,date_of_visit date,
	FOREIGN key(vet_id) REFERENCES vets(id),
	foreign key(animal_id) REFERENCES animals(id)
);
