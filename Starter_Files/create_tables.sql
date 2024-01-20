CREATE TABLE contacts(
	contact_id INT PRIMARY KEY NOT NULL,
	first_name VARCHAR(200) NOT NULL,
	last_name VARCHAR(200) NOT NULL,
	email VARCHAR(200) NOT NULL);
SELECT*FROM contacts

CREATE TABLE category(
	category_id VARCHAR(5) PRIMARY KEY NOT NULL,
	category VARCHAR(200) NOT NULL);
SELECT*FROM category

CREATE TABLE subcategory(
	subcategory_id VARCHAR(10) PRIMARY KEY NOT NULL,
	subcategory VARCHAR(200) NOT NULL);
SELECT*FROM subcategory

CREATE TABLE campaign(
	cf_id INT PRIMARY KEY NOT NULL,
	contact_id INT NOT NULL,
		FOREIGN KEY (contact_id) REFERENCES contacts(contact_id),
	company_name VARCHAR(200) NOT NULL,
	description VARCHAR(200) NOT NULL,
	goal DECIMAL NOT NULL,
	pledged DECIMAL NOT NULL,
	outcome VARCHAR(200) NOT NULL,
	backers_count INT NOT NULL,
	country  VARCHAR(2) NOT NULL,
	currenct VARCHAR(3) NOT NULL,
	launched_date DATE NOT NULL,
	end_date DATE NOT NULL,
	category_id VARCHAR(5) NOT NULL,
		FOREIGN KEY (category_id) REFERENCES category(category_id),
	subcategory_id VARCHAR(10) NOT NULL,
		FOREIGN KEY (subcategory_id) REFERENCES subcategory(subcategory_id));
SELECT*FROM campaign
