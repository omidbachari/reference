For which collars can we identify an owner?

| dog_name |  name
|----------|---------
| Boogie   | Evan
|Gilly     | Whitney
|Lilly     | Spencer
|Linux     | Dan
|Bronson   | Omid

SELECT lost_dog_collars.dog_name, dog_owners.name
  FROM lost_dog_collars
  INNER JOIN dog_owners
  ON dog_owners.dog_name = lost_dog_collars.dog_name;

-- For which collars is there no known owner?
--
-- |dog_name | name
-- |---------|------
-- |Lassie   |
-- |Fido     |
-- |Goose    |

SELECT lost_dog_collars.dog_name, dog_owners.name
  FROM lost_dog_collars
  LEFT JOIN dog_owners
  ON dog_owners.dog_name = lost_dog_collars.dog_name
  WHERE dog_owners.name IS NULL;

-- We need to see all collars, with an owner, if one matches.
--
-- |dog_name | name
-- |---------|------
-- |Boogie   | Evan
-- |Lassie   |
-- |Gilly    | Whitney
-- |Lilly    | Spencer
-- |Fido     |
-- |Linux    | Dan
-- |Bronson  | Omid
-- |Goose    |

SELECT lost_dog_collars.dog_name, dog_owners.name
  FROM lost_dog_collars
  LEFT JOIN dog_owners
  ON dog_owners.dog_name = lost_dog_collars.dog_name;
