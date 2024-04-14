DROP DATABASE IF EXISTS Academic_Event_Management_DB;
CREATE DATABASE Academic_Event_Management_DB;

USE Academic_Event_Management_DB;

CREATE TABLE USER (
    User_id int auto_increment,
    Inserted_at timestamp,
    Email varchar(50) unique,
    Password varchar(50) unique,
    F_name varchar(30),
    L_name varchar(30),
    P_number varchar(10),

    PRIMARY KEY (User_id)
);

CREATE TABLE UNIVERSITY (
    Uni_id int auto_increment,
    Inserted_at timestamp,
    Uni_name varchar(50) unique,

    PRIMARY KEY (Uni_id)
);

CREATE TABLE EVENT (
    Event_id int auto_increment,
    Inserted_at timestamp,
    Start_date date,
    Start_time time,
    Venue varchar(50),
    Abstract_deadline date,
    Pub_date date,
    Pub_time time,
    Max_cap int,
    Description varchar(250),
    Event_name varchar(50), 
    Type varchar(20),
    City varchar(30),
    State varchar(20),
	Street varchar(30),
    Zip varchar(10),
    Status varchar(20),
	End_date date,
    End_time time,
	User_id int,
    Uni_id int,

    PRIMARY KEY (Event_id),
    FOREIGN KEY (User_id) REFERENCES USER (User_id),
    FOREIGN KEY (Uni_id) REFERENCES UNIVERSITY (Uni_id)
);

CREATE TABLE ENROLLED_BY(
	User_id int,
    Event_id int,
    Inserted_at timestamp,
    
    PRIMARY KEY (User_id, Event_id),
    FOREIGN KEY (User_id) REFERENCES USER (User_id),
    FOREIGN KEY (Event_id) REFERENCES EVENT (Event_id)
);

CREATE TABLE PRESENTERS(
	Fname varchar(20),
    Lname varchar(20),
    Event_id int,
    Inserted_at timestamp,
    
    PRIMARY KEY (Fname, Lname, Event_id),
    FOREIGN KEY (Event_id) REFERENCES EVENT (Event_id)
);

CREATE TABLE SPONSORS(
	Spon_name varchar(40),
    Event_id int,
    Inserted_at timestamp,
    
    PRIMARY KEY (Spon_name, Event_id),
    FOREIGN KEY (Event_id) REFERENCES EVENT (Event_id)
);

CREATE TABLE KEYNOTE_SPEAKERS(
	Fname varchar(20),
    Lname varchar(20),
    Event_id int,
    Inserted_at timestamp,
    
    PRIMARY KEY (Fname, Lname, Event_id),
    FOREIGN KEY (Event_id) REFERENCES EVENT (Event_id)
);