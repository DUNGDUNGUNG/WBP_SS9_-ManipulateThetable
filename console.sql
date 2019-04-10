CREATE TABLE contacts
( contact_id INT(11)NOT NULL AUTO_INCREMENT,
  last_name VARCHAR(30)NOT NULL,
  first_name VARCHAR(25),
  birthday DATE,
  CONSTRAINT contacts_pk PRIMARY KEY (contact_id)
);

SELECT * FROM contacts;
CREATE TABLE suppliers
( supplier_id INT(11)NOT NULL AUTO_INCREMENT,
  supplier_name VARCHAR(50)NOT NULL,
  supplier_rep VARCHAR(30)NOT NULL DEFAULT 'TBD',
  CONSTRAINT suppliers_pk PRIMARY KEY (supplier_id)
);

UPDATE contacts
SET last_name='NAMTRUNG'
where contact_id = 122;

DROP TABLE suppliers;

ALTER TABLE contacts
  ADD last_name varchar(40)NOT NULL
    AFTER contact_id;

ALTER TABLE contacts
  ADD last_name varchar(40) NOT NULL
    AFTER contact_id,
  ADD first_name varchar(35)NULL
    AFTER last_name;

ALTER TABLE contacts
  MODIFY last_name varchar(50)NULL ;

ALTER  TABLE contacts
   ADD COLUMN contact_type varchar(30)NOT NULL;

ALTER TABLE contacts
  CHANGE COLUMN contact_type address VARCHAR(34)NOT NULL;

ALTER TABLE contacts
  DROP COLUMN address;

ALTER TABLE contacts
  RENAME TO people;

SELECT * FROM people;