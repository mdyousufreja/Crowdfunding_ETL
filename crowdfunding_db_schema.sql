--schema creating tables and references foreign key with primary key.

CREATE TABLE contacts (
	contact_id INT primary key,
	first_name VARCHAR(30) NOT NULL,
	last_name VARCHAR(30) NOT NULL,
	email VARCHAR(50) NOT NULL,
);

CREATE TABLE subcategory (
    subcategory_id VARCHAR(20)   NOT NULL primary key, 
    subcategory VARCHAR(20)   NOT NULL,
);

CREATE TABLE category (
    category_id VARCHAR(20)   NOT NULL primary key,
    category VARCHAR(20)   NOT NULL,
);


CREATE TABLE campaign (
    cf_id INT NOT NULL primary key,
    contact_id INT NOT NULL,
	FOREIGN KEY (contact_id) REFERENCES contacts(contact_id),
 	company_name VARCHAR(50)   NOT NULL,
    description VARCHAR(100)   NOT NULL,
    goal FLOAT   NOT NULL,
    pledged FLOAT   NOT NULL,
    outcome VARCHAR(30)   NOT NULL,
    backers_count INT   NOT NULL,
    country VARCHAR(10)   NOT NULL,
    currency VARCHAR(10)   NOT NULL,
    launched_date VARCHAR(20)   NOT NULL,
    end_date VARCHAR(20)   NOT NULL,
    category_id VARCHAR(20) NOT NULL,
	foreign key (category_id) references category(category_id),
	subcategory_id VARCHAR (20) NOT NULL,
	foreign key (subcategory_id) references subcategory(subcategory_id)
);

select * from category
select * from contacts
select * from subcategory
select * from campaign
