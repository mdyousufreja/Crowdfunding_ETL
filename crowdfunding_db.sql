-- Dropping Table if we want to start fresh
DROP TABLE if exists category;
DROP TABLE if exists subcategory;
DROP TABLE if exists contacts;
DROP TABLE if exists campaign;

-- Creating Tables as per Challange instruction
CREATE TABLE "Campaign" (
    "cf_id" int   NOT NULL,
    "contact_id" int   NOT NULL,
    "company_name" varchar(50)   NOT NULL,
    "description" varchar(100)   NOT NULL,
    "goal" float  NOT NULL,
    "pledged" float   NOT NULL,
    "outcome" varchar(30)   NOT NULL,
    "backers_count" int   NOT NULL,
    "country" varchar(10)   NOT NULL,
    "currency" varchar(10)   NOT NULL,
    "launch_date" varchar(20)   NOT NULL,
    "end_date" varchar(20)   NOT NULL,
    "category_id" varchar(20)   NOT NULL,
    "subcategory_id" varchar(20)   NOT NULL,
    CONSTRAINT "pk_Campaign" PRIMARY KEY (
        "contact_id"
     )
);

CREATE TABLE "Contacts" (
    "contact_id" int   NOT NULL,
    "first_name" varchar(50)   NOT NULL,
    "last_name" varchar(50)   NOT NULL,
    "email" varchar(50)   NOT NULL,
    CONSTRAINT "pk_Contacts" PRIMARY KEY (
        "contact_id"
     )
);

CREATE TABLE "category" (
    "category" varchar(20)   NOT NULL,
    "category_id" varchar(20)   NOT NULL
);

CREATE TABLE "subcategory" (
    "subcategory" varchar(20)  NOT NULL,
    "subcategory_id" varchar(20)   NOT NULL
);


--Assigning Foreign keys to establish the relationship
ALTER TABLE Campaign 
ADD CONSTRAINT fk_category_Campaign FOREIGN KEY(category_id) REFERENCES category (category_id),
ADD CONSTRAINT fk_subcategory_Campaign FOREIGN KEY(subcategory_id) REFERENCES subcategory (subcategory_id),
ADD CONSTRAINT fk_contacts_Campaign FOREIGN KEY(contact_id) REFERENCES contacts (contact_id);


-- Test Query to select * FROM Each Table to confirm data
SELECT*FROM "Campaign"

SELECT*FROM "category"

SELECT*FROM "Contacts"

SELECT*FROM "subcategory"