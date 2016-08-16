
CREATE DATABASE goodfoodhunting;

\c goodfoodhunting

CREATE TABLE dishes (
  id SERIAL4 PRIMARY KEY,
  name VARCHAR(50),
  image_url VARCHAR(300)
);

SELECT * FROM dishes;

INSERT INTO dishes (name, image_url) VALUES ('salmon soup', 'https://thehungrybelgian.files.wordpress.com/2013/11/20131107-054717.jpg');

CREATE TABLE dish_types (
  id SERIAL4 PRIMARY KEY,
  name VARCHAR(100) NOT NULL
);

INSERT INTO dish_types (name) VALUES ('snack');
INSERT INTO dish_types (name) VALUES ('dessert');
INSERT INTO dish_types (name) VALUES ('lunch');

ALTER TABLE dishes ADD dish_type_id INTEGER;

select * from dishes join dish_types on (dishes.dish_type_id=dish_type.id)

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
