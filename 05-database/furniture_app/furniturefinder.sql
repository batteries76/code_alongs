-- CREATE DATABASE furniturefinder;

CREATE TABLE users (
  id SERIAL4 PRIMARY KEY,
  name VARCHAR(50),
  email VARCHAR(50) NOT NULL,
  address VARCHAR(200),
  image_path VARCHAR(300),
  password_digest VARCHAR(400) NOT NULL
);

CREATE TABLE items (
  id SERIAL4 PRIMARY KEY,
  name VARCHAR(100) NOT NULL,
  image_path VARCHAR(200),
  user_id INTEGER
);

CREATE TABLE requests (
  id SERIAL4 PRIMARY KEY,
  message VARCHAR(300),
  item_id INTEGER,
  user_id INTEGER
);


CREATE TABLE discussions (
  id SERIAL4 PRIMARY KEY,
  body VARCHAR(800) NOT NULL,
  item_id INTEGER
);

-- CREATE TABLE user_type (
--   user_type VARCHAR(20) NOT NULL
-- );
