-- from the terminal run:
-- psql < music.sql

DROP DATABASE IF EXISTS music;

CREATE DATABASE music;

\c music

CREATE TABLE artists
(
  id SERIAL PRIMARY KEY,
  artist_name TEXT NOT NULL
);

CREATE TABLE producers
(
  id SERIAL PRIMARY KEY,
  producer_name TEXT
);

CREATE TABLE albums
(
  id SERIAL PRIMARY KEY,
  title TEXT NOT NULL
);

CREATE TABLE songs
(
  id SERIAL PRIMARY KEY,
  title TEXT NOT NULL,
  duration_in_seconds INTEGER,
  release_date DATE NOT NULL,
  album_id INTEGER NOT NULL REFERENCES albums ON DELETE CASCADE,
  producer_id INTEGER NOT NULL REFERENCES producers ON DELETE CASCADE,
  artist_id INTEGER REFERENCES artists ON DELETE SET NULL
);

INSERT INTO artists
  (artist_name)
VALUES
  ('Hanson'),
  ('Queen'),
  ('Mariah Cary'),
  ('Boyz II Men'),
  ('Lady Gaga'),
  ('Bradley Cooper'),
  ('Nickelback'),
  ('Jay Z'),
  ('Alicia Keys'),
  ('Katy Perry'),
  ('Juicy J'),
  ('Maroon 5'),
  ('Christina Aguilera'),
  ('Avril Lavigne'),
  ('Destiny''s Child');

INSERT INTO producers
  (producer_name)
VALUES
  ('Dust Brothers'),
  ('Stephen Lironi'),
  ('Roy THomas Baker'),
  ('Walter Afanasieff'),
  ('Benjamin Rice'),
  ('Rick Parashar'),
  ('Al Shux'),
  ('Max Martin'),
  ('Cirkut'),
  ('Shellback'),
  ('Benny Blanco'),
  ('The Matrix'),
  ('Darkchild');


INSERT INTO albums
  (title)
VALUES
  ('Middle of Nowhere'),
  ('A Night at the Opera'),
  ('Daydream'),
  ('A Star Is Born'),
  ('Silver Side Up'),
  ('The Blueprint 3'),
  ('Prism'),
  ('Hands All Over'),
  ('Let Go'),
  ('The Writing''s on the Wall');


INSERT INTO songs
  (title, duration_in_seconds, release_date, album_id, producer_id, band_id)
VALUES
  ('MMMBop', 238, '1997-04-15', 1, ),
  ('Bohemian Rhapsody', 355, '1975-10-31', 2, ),
  ('One Sweet Day', 282, '1995-11-14', 3, ),
  ('Shallow', 216, '2018-09-27', 4, ),
  ('How You Remind Me', 223, '2001-08-21', 5, ),
  ('New York State of Mind', 276, '2009-10-20', 6, ),
  ('Dark Horse', 215, '2013-12-17', 7, ),
  ('Moves Like Jagger', 201, '2011-06-21', 8, ),
  ('Complicated', 244, '2002-05-14', 9, ),
  ('Say My Name', 240, '1999-11-07', 10, );
