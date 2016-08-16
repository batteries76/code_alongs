CREATE DATABASE goodfoodhunting;

\c goodfoodhunting

CREATE TABLE dishes (
  id SERIAL4 PRIMARY KEY,
  name VARCHAR(50),
  image_url VARCHAR(300)
);

SELECT * FROM dishes;

INSERT INTO dishes (name, image_url) VALUES ('hamburger', 'http://mrsyoderskitchen.com/images/fries-hamburger-sandwich.jpg');

INSERT INTO dishes (name, image_url) VALUES ('vegi', 'http://www.chicvegan.com/wp-content/uploads/2014/10/Variety-Vegetables.jpg');

CREATE TABLE dish_types (
  id SERIAL4 PRIMARY KEY,
  name VARCHAR(100) NOT NULL
);


INSERT INTO dish_types (name) VALUES ('snack');
INSERT INTO dish_types (name) VALUES ('dessert');
INSERT INTO dish_types (name) VALUES ('lunch');

ALTER TABLE dishes ADD dish_type_id INTEGER;

select * from dishes join dish_types on (dishes.dish_type_id = dish_types.id);

CREATE TABLE comments (
  id SERIAL4 PRIMARY KEY,
  body VARCHAR(800) NOT NULL,
  dish_id INTEGER
);


CREATE TABLE users (
  id SERIAL4 PRIMARY KEY,
  email VARCHAR(50) NOT NULL,
  password_digest VARCHAR(400) NOT NULL
);
