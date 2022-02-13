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


