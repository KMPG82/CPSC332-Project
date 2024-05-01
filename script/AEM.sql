DROP DATABASE IF EXISTS AEM;
CREATE DATABASE AEM;

USE AEM;

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
    Pub_date DATE DEFAULT NULL,
    Pub_time TIME DEFAULT NULL, 
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
    FOREIGN KEY (Uni_id) REFERENCES UNIVERSITY (Uni_id),
    
	CONSTRAINT chk_start_date_format CHECK (Start_date REGEXP '^[0-9]{2}/[0-9]{2}/[0-9]{4}$'),
	CONSTRAINT chk_end_date_format CHECK (End_date REGEXP '^[0-9]{2}/[0-9]{2}/[0-9]{4}$'),
	CONSTRAINT chk_publish_date_format CHECK (Pub_date REGEXP '^[0-9]{2}/[0-9]{2}/[0-9]{4}$')
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

-- Inserting universities with necessary information
INSERT INTO UNIVERSITY (Inserted_at, Uni_name) VALUES
(NOW(), 'Harvard University'),
(NOW(), 'Stanford University'),
(NOW(), 'Massachusetts Institute of Technology (MIT)'),
(NOW(), 'California Institute of Technology (Caltech)'),
(NOW(), 'University of Oxford');

-- Inserting users with necessary information
INSERT INTO USER (Inserted_at, Email, Password, F_name, L_name, P_number) VALUES
(NOW(), 'john@example.com', 'password1', 'John', 'Doe', '1234567890'),
(NOW(), 'jane@example.com', 'password2', 'Jane', 'Smith', '9876543210'),
(NOW(), 'mike@example.com', 'password3', 'Mike', 'Johnson', '5551234567'),
(NOW(), 'sara@example.com', 'password4', 'Sara', 'Williams', '7775554444'),
(NOW(), 'chris@example.com', 'password5', 'Chris', 'Brown', '2223334444'),
(NOW(), 'emily@example.com', 'password6', 'Emily', 'Davis', '9998887777'),
(NOW(), 'david@example.com', 'password7', 'David', 'Martinez', '1112223333'),
(NOW(), 'lisa@example.com', 'password8', 'Lisa', 'Anderson', '4445556666'),
(NOW(), 'kevin@example.com', 'password9', 'Kevin', 'Thomas', '6667778888'),
(NOW(), 'amanda@example.com', 'password10', 'Amanda', 'Garcia', '8889990000');

-- Events for the first 10 users
INSERT INTO EVENT (Inserted_at, Start_date, Start_time, Venue, Abstract_deadline, Max_cap, Description, Event_name, Type, City, State, Street, Zip, Status, End_date, End_time, Pub_date, Pub_time, User_id, Uni_id)
VALUES
(NOW(), '05/01/2024', '09:00:00', 'Conference Hall A', '04/15/2024', 100, 'Annual Science Conference', 'ScienceCon 2024', 'Conference', 'Boston', 'MA', '123 Main St', '02101', 'Active', '05/03/2024', '17:00:00', '04/25/2024', '12:00:00', 1, 1),
(NOW(), '05/01/2024', '10:00:00', 'Lecture Hall B', '04/15/2024', 50, 'Workshop on Machine Learning', 'ML Workshop', 'Workshop', 'Cambridge', 'MA', '456 Elm St', '02139', 'Active', '05/03/2024', '16:00:00', '04/25/2024', '13:00:00', 1, 2),
(NOW(), '06/01/2024', '09:30:00', 'Auditorium', '05/15/2024', 80, 'Annual Business Summit', 'BizSummit 2024', 'Conference', 'Stanford', 'CA', '789 Oak St', '94305', 'Active', '06/03/2024', '17:00:00', '05/25/2024', '14:00:00', 2, 2),
(NOW(), '06/01/2024', '11:00:00', 'Seminar Room C', '05/15/2024', 60, 'Seminar on Artificial Intelligence', 'AI Seminar', 'Seminar', 'Palo Alto', 'CA', '101 Pine St', '94301', 'Active', '06/03/2024', '15:00:00', '05/25/2024', '15:00:00', 2, 1),
(NOW(), '07/01/2024', '10:00:00', 'Conference Room A', '06/15/2024', 120, 'International Academic Conference', 'AcademicCon 2024', 'Conference', 'Boston', 'MA', '202 High St', '02101', 'Active', '07/03/2024', '18:00:00', '06/25/2024', '16:00:00', 3, 1),
(NOW(), '07/01/2024', '09:00:00', 'Lecture Hall D', '06/15/2024', 70, 'Workshop on Data Science', 'DataSci Workshop', 'Workshop', 'Cambridge', 'MA', '303 Elm St', '02139', 'Active', '07/03/2024', '16:00:00', '06/25/2024', '17:00:00', 3, 2),
(NOW(), '08/01/2024', '10:30:00', 'Auditorium', '07/15/2024', 90, 'International Symposium on Robotics', 'Robotics Symposium', 'Symposium', 'Cambridge', 'MA', '505 Oak St', '02138', 'Active', '08/03/2024', '18:00:00', '07/25/2024', '18:00:00', 4, 1),
(NOW(), '08/01/2024', '13:00:00', 'Conference Room B', '07/15/2024', 50, 'Seminar on Quantum Computing', 'Quantum Seminar', 'Seminar', 'Palo Alto', 'CA', '707 Pine St', '94301', 'Active', '08/03/2024', '16:00:00', '07/25/2024', '19:00:00', 4, 2),
(NOW(), '09/01/2024', '09:00:00', 'Lecture Hall A', '08/15/2024', 110, 'International Symposium on Neuroscience', 'Neuroscience Symposium', 'Symposium', 'Stanford', 'CA', '909 Elm St', '94305', 'Active', '09/03/2024', '17:00:00', '08/25/2024', '20:00:00', 5, 2),
(NOW(), '09/01/2024', '11:30:00', 'Seminar Room B', '08/15/2024', 60, 'Workshop on Bioinformatics', 'Bioinformatics Workshop', 'Workshop', 'Boston', 'MA', '404 High St', '02101', 'Active', '09/03/2024', '15:00:00', '08/25/2024', '21:00:00', 5, 1);

-- Events for the last 5 users
INSERT INTO EVENT (Inserted_at, Start_date, Start_time, Venue, Abstract_deadline, Max_cap, Description, Event_name, Type, City, State, Street, Zip, Status, End_date, End_time, Pub_date, Pub_time, User_id, Uni_id)
VALUES
(NOW(), '10/01/2024', '09:00:00', 'Conference Hall B', '09/15/2024', 100, 'International Conference on Climate Change', 'ClimateCon 2024', 'Conference', 'Cambridge', 'MA', '111 Main St', '02139', 'Active', '10/03/2024', '17:00:00', '09/25/2024', '12:00:00', 6, 1),
(NOW(), '10/01/2024', '10:30:00', 'Auditorium', '09/15/2024', 80, 'Seminar on Machine Learning Applications', 'ML Applications Seminar', 'Seminar', 'Palo Alto', 'CA', '222 Elm St', '94301', 'Active', '10/03/2024', '16:00:00', '09/25/2024', '13:00:00', 6, 2),
(NOW(), '11/01/2024', '09:00:00', 'Conference Room A', '10/15/2024', 120, 'Annual Academic Symposium', 'AcademicSym 2024', 'Symposium', 'Stanford', 'CA', '333 Oak St', '94305', 'Active', '11/03/2024', '18:00:00', '10/25/2024', '14:00:00', 7, 2),
(NOW(), '11/01/2024', '11:00:00', 'Lecture Hall C', '10/15/2024', 70, 'Workshop on Neural Networks', 'Neural Networks Workshop', 'Workshop', 'Boston', 'MA', '444 Pine St', '02101', 'Active', '11/03/2024', '16:00:00', '10/25/2024', '15:00:00', 7, 1),
(NOW(), '12/01/2024', '10:00:00', 'Seminar Room D', '11/15/2024', 90, 'International Conference on Biotechnology', 'Biotech Conference', 'Conference', 'Palo Alto', 'CA', '555 High St', '94301', 'Active', '12/03/2024', '18:00:00', '11/25/2024', '16:00:00', 8, 1),
(NOW(), '12/01/2024', '13:00:00', 'Conference Hall C', '11/15/2024', 60, 'Seminar on Cryptography', 'Cryptography Seminar', 'Seminar', 'Cambridge', 'MA', '666 Elm St', '02139', 'Active', '12/03/2024', '17:00:00', '11/25/2024', '17:00:00', 8, 2),
(NOW(), '01/01/2025', '09:00:00', 'Auditorium', '12/15/2024', 100, 'International Symposium on Artificial Intelligence', 'AI Symposium', 'Symposium', 'Stanford', 'CA', '777 Main St', '94305', 'Active', '01/03/2025', '17:00:00', '12/25/2024', '18:00:00', 9, 2),
(NOW(), '01/01/2025', '11:30:00', 'Conference Room B', '12/15/2024', 50, 'Workshop on Robotics', 'Robotics Workshop', 'Workshop', 'Palo Alto', 'CA', '888 Oak St', '94301', 'Active', '01/03/2025', '16:00:00', '12/25/2024', '19:00:00', 9, 1),
(NOW(), '02/01/2025', '10:00:00', 'Seminar Room A', '01/15/2025', 110, 'International Conference on Neuroscience', 'Neuroscience Conference', 'Conference', 'Boston', 'MA', '999 Pine St', '02101', 'Active', '02/03/2025', '18:00:00', '01/25/2025', '20:00:00', 10, 1),
(NOW(), '02/01/2025', '12:30:00', 'Lecture Hall E', '01/15/2025', 60, 'Seminar on Quantum Physics', 'Quantum Physics Seminar', 'Seminar', 'Cambridge', 'MA', '101 Elm St', '02139', 'Active', '02/03/2025', '16:00:00', '01/25/2025', '21:00:00', 10, 2);





