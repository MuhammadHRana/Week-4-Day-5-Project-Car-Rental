-- Creating Tables

CREATE TABLE "Salesperson" (
  "id" int PRIMARY KEY,
  "first_name" varchar(255),
  "last_name" varchar(255),
  "email" varchar(255)
);

CREATE TABLE "Customer" (
  "id" int PRIMARY KEY,
  "first_name" varchar(255),
  "last_name" varchar(255),
  "email" varchar(255),
  "cell_phone" varchar(255),
  "car_id" int
);

CREATE TABLE "Mechanic" (
  "id" int PRIMARY KEY,
  "first_name" varchar(255),
  "last_name" varchar(255),
  "email" varchar(255)
);

CREATE TABLE "Invoice" (
  "id" int PRIMARY KEY,
  "service_id" int,
  "cost" int,
  "customer_id" int,
  "mechanic_id" int,
  "salesperson_id" int,
  "date_id" varchar(255),
  "car_id" int,
  "part_id" int
);

CREATE TABLE "Services" (
  "id" int PRIMARY KEY,
  "service_name" varchar(255),
  "cost" int,
  "customer_id" int,
  "mechanic_id" int,
  "car_id" int
);

CREATE TABLE "Cars" (
  "id" int PRIMARY KEY,
  "car_make" varchar(255),
  "car_model" varchar(255),
  "car_year" int,
  "car_color" varchar(255),
  "car_status" varchar(255),
  "car_owner" varchar(255),
  "cost" int
);

CREATE TABLE "Parts" (
  "id" int PRIMARY KEY,
  "part_name" varchar(255),
  "mechanic_id" int,
  "car_id" int,
  "cost" int
);


-- Creating Keys

ALTER TABLE "Customer" ADD FOREIGN KEY ("car_id") REFERENCES "Cars" ("id");

ALTER TABLE "Invoice" ADD FOREIGN KEY ("car_id") REFERENCES "Cars" ("id");

ALTER TABLE "Parts" ADD FOREIGN KEY ("car_id") REFERENCES "Cars" ("id");

ALTER TABLE "Services" ADD FOREIGN KEY ("car_id") REFERENCES "Cars" ("id");

ALTER TABLE "Invoice" ADD FOREIGN KEY ("customer_id") REFERENCES "Customer" ("id");

ALTER TABLE "Invoice" ADD FOREIGN KEY ("mechanic_id") REFERENCES "Mechanic" ("id");

ALTER TABLE "Invoice" ADD FOREIGN KEY ("salesperson_id") REFERENCES "Salesperson" ("id");

ALTER TABLE "Invoice" ADD FOREIGN KEY ("cost") REFERENCES "Services" ("cost");

ALTER TABLE "Invoice" ADD FOREIGN KEY ("cost") REFERENCES "Cars" ("cost");

ALTER TABLE "Invoice" ADD FOREIGN KEY ("cost") REFERENCES "Parts" ("cost");

ALTER TABLE "Invoice" ADD FOREIGN KEY ("service_id") REFERENCES "Services" ("id");

ALTER TABLE "Services" ADD FOREIGN KEY ("customer_id") REFERENCES "Customer" ("id");

ALTER TABLE "Services" ADD FOREIGN KEY ("mechanic_id") REFERENCES "Mechanic" ("id");

ALTER TABLE "Parts" ADD FOREIGN KEY ("mechanic_id") REFERENCES "Mechanic" ("id");

ALTER TABLE "Invoice" ADD FOREIGN KEY ("part_id") REFERENCES "Parts" ("id");



-- Adding Data into Tables

insert into "Salesperson"  (id , first_name , last_name , email)
values (1 , 'Harun' , 'Stubbs' , 'HarunS@gmail.com' ),
       (2 , 'Colette' , 'Tang' , 'ColetteT@gmail.com' ),
		 (3 , 'Lochlan' , 'Finney' , 'LochlanF@gmail.com' ),
		 (4 , 'Destiny' , 'Valenzuela' , 'DestinyV@gmail.com' ),
		 (5 , 'Yusuf' , 'Davenport' , 'YusufD@gmail.com' );
		
select *
from "Salesperson"

insert into "Customer"  (id , first_name , last_name , email, cell_phone , car_id)
values   (0 , 'N/A' , 'N/A' , 'N/A' , 'N/A' , 0 ),
         (4526 , 'Emma' , 'Poole' , 'EmmaP@gmail.com' , '718-747-8562' , 45 ),
		 (243 , 'Skylar' , 'Novak' , 'SkylarN@gmail.com' , '616-547-9636' , 46 ),
		 (421 , 'Malaikah' , 'Baldwin' , 'MalaikahB@gmail.com' , '212-236-5142' , 47),
		 (7523 , 'Yuvaan' , 'Rivers' , 'YuvaanR@gmail.com' , '213-896-3451' , 48),
		 (12 , 'Kelise' , 'Ball' , 'KeliseB@gmail.com' , '917-863-7045' , 49 );
		
select *
from "Customer"

insert into "Mechanic"  (id , first_name , last_name , email)
values   (0 , 'N/A' , 'N/A' , 'N/A' ),
         (18 , 'Rea' , 'Knights' , 'ReaK@gmail.com' ),
		 (19, 'Eloisa' , 'Cornish' , 'EloisaC@gmail.com' ),
		 (29 , 'Amna' , 'Lee' , 'AmnaL@gmail.com' ),
		 (7 , 'Isobella' , 'Hancock' , 'IsobellaH@gmail.com' ),
		 (3 , 'Arisha' , 'Reyna' , 'ArishaR@gmail.com' );
--		
select *
from "Mechanic"

insert into "Invoice" (id , service_id , "cost" , customer_id , mechanic_id , salesperson_id , date_id , car_id , part_id)
values (6489289 , 51 , 149 , 12 , 19 , 3 , 'January 1, 2022' , 981341 , 0 ),
       (6489291 , 74 , 15 , 421 , 29 , 5 , 'January 1, 2022' , 789412 , 0 ),
		 (6489292 , 23 , 45 , 7523 , 3 , 2 , 'January 5, 2022' , 35448 , 0 ),
		 (6489293 , 0 , 749 , 4526 , 18 , 1 , 'January 19, 2022' , 45 , 23 ),
		 (6489295 , 52 , 99 , 243 , 18 , 2 , 'January 23, 2022' , 651648 , 0 ),
		 (6489296 , 0 , 89 , 243 , 7 , 2 , 'February 3, 2022' , 46 , 345 ),
		 (6489297 , 0 , 14 , 421 , 29 , 1 , 'February 5, 2022' , 47 , 87 ),
		 (6489298 , 0 , 112 , 7523 , 19 , 5 , 'February 8, 2022' , 48 , 5 ),
		 (6489299 , 48 , 1249 , 4526 , 7 , 3 , 'February 13, 2022' , 1483287 , 0 );
		
select *
from "Invoice"

insert into "Services" (id , service_name , "cost" , customer_id , mechanic_id , car_id)
values (0 , 'N/A' , 0 , 0 , 0 , 0 );
       (74 , 'Car Wash' , 15 , 421 , 29 , 789412),
       (52 , 'Oil Change' , 99 , 243 , 18 , 651648),
		 (23 , 'Wheel Alignment' , 45 , 7523 , 3 , 35448 ),
		 (51 , 'Detailing' , 149 , 12 , 19 , 981341 ),
		 (48 , 'Color Wrap' , 1249 , 4526 , 7 , 1483287 );
		
select *
from "Services"

insert into "Cars"  (id , car_make , car_model , car_year , car_color , car_status , car_owner , "cost" )
values (0 , 'N/A' , 'N/A' , 0 , 'N/A' , 'N/A' , 'N/A' , 0 ),
       (45 , 'Honda' , 'Civic' , '2016' , 'White' , 'Used' , 'Customer' , 5000 ),
       (46 , 'Dodge' , 'Charger' , '2015' , 'Green' , 'Used' , 'Customer' , 17999 ),
		 (47 , 'Toyota' , 'CRV' , '2021' , 'Purple' , 'Used' , 'Customer' , 28125 ),
		 (48 , 'Genesis' , 'GX80' , '2022' , 'Brown' , 'New' , 'Customer' , 99950 ),
		 (49 , 'Mclaren' , 'GT' , '2020' , 'Light Blue' , 'Used' , 'Customer' , 232499 ),
		(35448 , 'Mercedes' , 'C300' , '2017' , 'Silver' , 'Used' , 'Customer' , 45000 ),
       (981341 , 'Lexus' , 'LX470' , '2005' , 'Pearl White' , 'Used' , 'Customer' , 7999 ),
		 (1483287 , 'Toyota' , 'Highlander' , '2019' , 'Gray' , 'Used' , 'Customer' , 78125 ),
		 (789412 , 'BMW' , 'M5' , '2016' , 'Cerulean Blue' , 'Used' , 'Customer' , 89750 ),
		 (651648 , 'Aston Martin' , 'Vantage' , '2022' , 'Black' , 'New' , 'Customer' , 132499 );
		
select *
from "Cars"

insert into "Parts"  (id , part_name , mechanic_id  ,  car_id , "cost" )
values (23 , 'Muffler' , 18 , 981341 , 749 ),
       (345 , 'Engine Belt' , 7 , 1483287 , 89 ),
		 (87 , 'Windshield Wipers' , 29 , 789412 , 14 ),
		 (5 , 'Steering Wheel' , 19 , 35448 , 112 ),
		 (0 , 'None' , 0 , 0 , 0 ),
		 (4526 , 'Slip Differential' , 3 , 651648 , 1125 );
		
select *
from "Parts"
