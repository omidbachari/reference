## For which collars can we identify an owner?

| dog_name  |  name
|-----------|---------
| Boogie    | Evan
| Gilly     | Whitney
| Lilly     | Spencer
| Linux     | Dan
| Bronson   | Omid

```sql
SELECT lost_dog_collars.dog_name, dog_owners.name
  FROM lost_dog_collars
  INNER JOIN dog_owners
  ON dog_owners.dog_name = lost_dog_collars.dog_name;
```

## For which collars is there no known owner?

|dog_name | name
|---------|------
|Lassie   | **NULL**
|Fido     | **NULL**
|Goose    | **NULL**

```sql
SELECT lost_dog_collars.dog_name, dog_owners.name
  FROM lost_dog_collars
  LEFT JOIN dog_owners
  ON dog_owners.dog_name = lost_dog_collars.dog_name
  WHERE dog_owners.name IS NULL;
```

## We need to see all collars, with an owner, if one matches.

|dog_name | name
|---------|------
|Boogie   | Evan
|Lassie   | **NULL**
|Gilly    | Whitney
|Lilly    | Spencer
|Fido     | **NULL**
|Linux    | Dan
|Bronson  | Omid
|Goose    | **NULL**

```sql
SELECT lost_dog_collars.dog_name, dog_owners.name
  FROM lost_dog_collars
  LEFT JOIN dog_owners
  ON dog_owners.dog_name = lost_dog_collars.dog_name;
```

## We need to see all owners, with collars in the Lost and Found, if one matches.

|  name   | dog_name
|---------|----------
| Evan    | Boogie
| Whitney | Gilly
| Spencer | Lilly
| Dan     | Linux
| Omid    | Bronson
| Dan     | **NULL**

```sql
SELECT dog_owners.name, lost_dog_collars.dog_name
  FROM lost_dog_collars
  RIGHT JOIN dog_owners
  ON lost_dog_collars.dog_name = dog_owners.dog_name;

```
