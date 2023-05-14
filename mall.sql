CREATE TABLE product (
  id int NOT NULL AUTO_INCREMENT,
  name varchar(20) NOT NULL,
  price int NOT NULL,
  description varchar(100),
  maker_id INT NOT null,
  category_id INT NOT null,
  stock int DEFAULT '0',
  state varchar(15),
  image_path VARCHAR(50),
  PRIMARY KEY (id),
  FOREIGN KEY (maker_id) REFERENCES maker (id),
  FOREIGN KEY (category_id) REFERENCES category (id)
);

CREATE TABLE member (
  id VARCHAR(20) NOT NULL,
  pw VARCHAR(20) NOT NULL,
  name varchar(10) NOT NULL,
  birth date,
  email varchar(30),
  phone CHAR(13),
  address VARCHAR(100),
  join_date DATE DEFAULT NOW(),
  PRIMARY KEY (id)
);

CREATE TABLE maker (
	id INT AUTO_INCREMENT,
	NAME VARCHAR(20),
	PRIMARY KEY (id)
);

CREATE TABLE category (
	id INT AUTO_INCREMENT,
	NAME VARCHAR(10),
	PRIMARY KEY (id)
);