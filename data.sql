  insert into animals(name , date_of_birth,escape_attempts , neutered , weight_kg)  
           VALUES('Agumon', '2020-2-3', 0 , true , 10.23);

  insert into animals(name , date_of_birth,escape_attempts , neutered , weight_kg)
      values('Gabumo','2018-11-15',2,true,8);
	  
  insert into animals(name , date_of_birth,escape_attempts , neutered , weight_kg)	
      values('Pikach','2021-01-7',1,false,15.04);

  insert into animals(name , date_of_birth,escape_attempts , neutered , weight_kg)  
	  values('Devimon','2017-5-12',5,true,11);
  
     
  insert into animals (name,date_of_birth,escape_attempts,neutered,weight_kg)
    values('Charmander','2020-02-08',0,false,-11)  

  insert into animals (name,date_of_birth,escape_attempts,neutered,weight_kg)
    values('Plantmon','2021-11-15',2,TRUE,-5.7)    

   insert into animals (name,date_of_birth,escape_attempts,neutered,weight_kg)
 values('Squirtle','1993-04-02',3,false,-12.13) 
 insert into animals (name,date_of_birth,escape_attempts,neutered,weight_kg)
 values('Angemon','2005-06-12',1,true,-45) 
 insert into animals (name,date_of_birth,escape_attempts,neutered,weight_kg)
 values  ('Boarmon','2005-06-07',7,true,20.4)  
 insert into animals (name,date_of_birth,escape_attempts,neutered,weight_kg)
 values    ('Blossom','1998-10-13',3,true,17)   
 insert into animals (name,date_of_birth,escape_attempts,neutered,weight_kg)
 values    ('Ditto','2022-05-14',4,true,22)

--  day-3

insert into owners(full_name,age)
values('Sam Smith',34),
      ('Jennifer Orwell' , 19),
	   ('Bob',45),
	   ('Melody Pond',77),
	   ('Dean Winchester',14),
	   ('Jodie Whittaker',38)

 INSERT into species (name)
   values('Pokemon'),
         ('Digimon')  

  update animals set species_id=2 where name like '%mon';
  update animals set species_id=1 where name not like '%mon';   
  
  update animals set owner_id=1 where id=12;

  update animals 
  set owner_id=(
    select id from owners where full_name='Jennifer Orwell'
     )
  where id=13 or id=25 ;

   update animals 
   set owner_id=(
     select id from owners where full_name='Bob'
     ) 
    where id=15 or id=24 ;

   update animals 
   set owner_id=(
     select id from owners where full_name='Melody Pond'
    )
   where id=16 or id=18 or id=21; 

   update animals 
   set owner_id=(
     select id from owners where full_name='Dean Winchester'
    ) 
  where id=19 or id=20;
       