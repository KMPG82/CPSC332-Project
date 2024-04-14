DROP DATABASE IF EXISTS Academic_Event_Management_DB;
CREATE DATABASE Academic_Event_Management_DB;

USE Academic_Event_Management_DB;

CREATE TABLE USER (
    User_id INT AUTO_INCREMENT,
    Inserted_at TIMESTAMP NOT NULL,
    Email VARCHAR(50) UNIQUE NOT NULL,
    Password VARCHAR(50) UNIQUE NOT NULL,
    F_name VARCHAR(20) NOT NULL,
    L_name VARCHAR(20) NOT NULL,
    P_number VARCHAR(10) NOT NULL,

    PRIMARY KEY (User_id)
);

CREATE TABLE UNIVERSITY (
    Uni_id INT AUTO_INCREMENT,
    Inserted_at TIMESTAMP NOT NULL,
    Uni_name VARCHAR(50) UNIQUE NOT NULL,

    PRIMARY KEY (Uni_id)
);

CREATE TABLE EVENT (
    Event_id INT AUTO_INCREMENT,
    Inserted_at TIMESTAMP NOT NULL,
    Start_date DATE NOT NULL,
    Start_time TIME NOT NULL,
    Venue VARCHAR(50) NOT NULL,
    Abstract_deadline DATE NOT NULL,
    Pub_date DATE NOT NULL,
    Pub_time TIME NOT NULL,
    Max_cap INT NOT NULL,
    Description VARCHAR(250) NOT NULL,
    Event_name VARCHAR(50) NOT NULL, 
    Type VARCHAR(20) NOT NULL,
    City VARCHAR(30) NOT NULL,
    State VARCHAR(20) NOT NULL,
	Street VARCHAR(30) NOT NULL,
    Zip VARCHAR(10) NOT NULL,
    Status VARCHAR(20) NOT NULL,
	End_date DATE NOT NULL,
    End_time TIME NOT NULL,
	User_id INT NOT NULL,
    Uni_id INT NOT NULL,

    PRIMARY KEY (Event_id),
    FOREIGN KEY (User_id) REFERENCES USER (User_id),
    FOREIGN KEY (Uni_id) REFERENCES UNIVERSITY (Uni_id)
);

CREATE TABLE ENROLLED_BY(
	User_id INT,
    Event_id INT,
    Inserted_at TIMESTAMP NOT NULL,
    
    PRIMARY KEY (User_id, Event_id),
    FOREIGN KEY (User_id) REFERENCES USER (User_id),
    FOREIGN KEY (Event_id) REFERENCES EVENT (Event_id)
);

CREATE TABLE PRESENTERS(
	Fname VARCHAR(20),
    Lname VARCHAR(20),
    Event_id INT,
    Inserted_at TIMESTAMP NOT NULL,
    
    PRIMARY KEY (Fname, Lname, Event_id),
    FOREIGN KEY (Event_id) REFERENCES EVENT (Event_id)
);

CREATE TABLE SPONSORS(
	Spon_name VARCHAR(40),
    Event_id INT,
    Inserted_at TIMESTAMP NOT NULL,
    
    PRIMARY KEY (Spon_name, Event_id),
    FOREIGN KEY (Event_id) REFERENCES EVENT (Event_id)
);

CREATE TABLE KEYNOTE_SPEAKERS(
	Fname VARCHAR(20),
    Lname VARCHAR(20),
    Event_id INT,
    Inserted_at TIMESTAMP NOT NULL,
    
    PRIMARY KEY (Fname, Lname, Event_id),
    FOREIGN KEY (Event_id) REFERENCES EVENT (Event_id)
);