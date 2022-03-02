DROP TABLE IF EXISTS bio_class CASCADE;
CREATE TABLE bio_class (
  id    SERIAL PRIMARY KEY,
  name  TEXT NOT NULL
);

INSERT INTO bio_class VALUES (1, 'mammal'), (2, 'reptile'), (3, 'mollusk');

DROP TABLE IF EXISTS species CASCADE;
CREATE TABLE species (
  id        SERIAL PRIMARY KEY,
  name      TEXT NOT NULL,
  class_id  INTEGER REFERENCES bio_class(id)
);

INSERT INTO species VALUES (1, 'cat', 1), (2, 'turtle', 2),
  (3, 'horse', 1), (4, 'lizard', 2), (5, 'cuttlefish', 3);

DROP TABLE IF EXISTS animal CASCADE;
CREATE TABLE animal (
  name       TEXT,
  species_id INTEGER REFERENCES species(id),
  limbs      INTEGER,
  color      TEXT,
  tame       BOOLEAN
);

INSERT INTO animal (name, species_id, limbs, color, tame) VALUES
  ('Bumpy', 1, 4, 'black', true),
  ('Rascal', 1, 3, 'orange', true),
  ('Noah', 1, 4, 'gray', false),
  ('Biting', 3, 4, 'bay', true),
  ('Prince', 3, 4, 'gray', true),
  (null, 5, 10, NULL, false),
  (null, 4, 4, 'green', false),
  ('Tachyon', 2, 4, 'green', false)
  ;
