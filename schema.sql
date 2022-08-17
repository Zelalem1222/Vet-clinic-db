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

