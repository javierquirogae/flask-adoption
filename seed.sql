DROP DATABASE IF EXISTS  adopt;

CREATE DATABASE adopt;

\c adopt

CREATE TABLE pets
(
  id SERIAL PRIMARY KEY,
  name TEXT NOT NULL,
  species TEXT NOT NULL,
  photo_url TEXT,
  age INT,
  notes TEXT,
  available BOOLEAN NOT NULL DEFAULT TRUE
);

INSERT INTO pets
  (name, species, photo_url, age, notes, available)
VALUES
  ('Dug', 'dog', 'https://i.natgeofe.com/n/4f5aaece-3300-41a4-b2a8-ed2708a0a27c/domestic-dog_thumb_4x3.jpg', 3, 'Incredibly adorable.', 't'),
  ('The Claw', 'cat', 'https://upload.wikimedia.org/wikipedia/commons/1/15/Cat_August_2010-4.jpg', 5, 'Confy cat on couch', 't');