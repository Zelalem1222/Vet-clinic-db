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