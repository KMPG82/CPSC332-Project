DROP DATABASE IF EXISTS Academic_Event_Management_DB;
CREATE DATABASE Academic_Event_Management_DB;

USE Academic_Event_Management_DB;

CREATE TABLE USER (
    User_id int auto_increment,
    Insert_date datetime,
    Email varchar(50) unique,
    Password varchar(50) unique,
    F_name varchar(50),
    L_name varchar(50),
    P_number varchar(10),

    PRIMARY KEY (User_id)
);

CREATE TABLE UNIVERSITY (
    Uni_id int auto_increment,
    Insert_date datetime,
    Uni_name varchar(50) unique,

    PRIMARY KEY (Uni_id)
);

CREATE TABLE EVENT (
    Event_id int auto_increment,
    Insert_date datetime,
    Start_date date,
    Start_time time,
    Venue varchar(50),
    Abstract_deadline date,
    Pub_date date,
    Pub_time time,
    Max_cap int,
    Description varchar(250),
    Event_name varchar(30),
    Type varchar(30),
    City varchar(30),
    State varchar(30),
	Street varchar(30),
    Zip varchar(30),
    Status varchar(30),
	End_date date,
    End_time time,
	User_id int,
    Uni_id int,

    PRIMARY KEY (Event_id),
    foreign key (User_id) references USER(User_id),
    foreign key (Uni_id) references UNIVERSITY(Uni_id)
);