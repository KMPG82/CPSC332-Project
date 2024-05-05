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
    FOREIGN KEY (Uni_id) REFERENCES UNIVERSITY (Uni_id)
);

CREATE TABLE ENROLLED_BY(
	User_id INT,
    Event_id INT,
    Inserted_at TIMESTAMP NOT NULL,
    
    PRIMARY KEY (User_id, Event_id),
    FOREIGN KEY (User_id) REFERENCES USER (User_id),
    FOREIGN KEY (Event_id) REFERENCES EVENT (Event_id) ON DELETE CASCADE
);

CREATE TABLE PRESENTERS(
	Fname VARCHAR(20),
    Lname VARCHAR(20),
    Event_id INT,
    Inserted_at TIMESTAMP NOT NULL,
    
    PRIMARY KEY (Fname, Lname, Event_id),
    FOREIGN KEY (Event_id) REFERENCES EVENT (Event_id) ON DELETE CASCADE
);

CREATE TABLE SPONSORS(
	Spon_name VARCHAR(40),
    Event_id INT,
    Inserted_at TIMESTAMP NOT NULL,
    
    PRIMARY KEY (Spon_name, Event_id),
    FOREIGN KEY (Event_id) REFERENCES EVENT (Event_id) ON DELETE CASCADE
);

CREATE TABLE KEYNOTE_SPEAKERS(
	Fname VARCHAR(20),
    Lname VARCHAR(20),
    Event_id INT,
    Inserted_at TIMESTAMP NOT NULL,
    
    PRIMARY KEY (Fname, Lname, Event_id),
    FOREIGN KEY (Event_id) REFERENCES EVENT (Event_id) ON DELETE CASCADE
);

INSERT INTO UNIVERSITY (Inserted_at, Uni_name) VALUES
(NOW(), 'Harvard University'),
(NOW(), 'Stanford University'),
(NOW(), 'Massachusetts Institute of Technology (MIT)'),
(NOW(), 'California Institute of Technology (Caltech)'),
(NOW(), 'University of Oxford');

INSERT INTO USER (Inserted_at, Email, Password, F_name, L_name, P_number)
VALUES
    (NOW(), 'user1@example.com', 'password1', 'John', 'Doe', '1234567890'),
    (NOW(), 'user2@example.com', 'password2', 'Jane', 'Smith', '0987654321'),
    (NOW(), 'user3@example.com', 'password3', 'Michael', 'Johnson', '3456789012'),
    (NOW(), 'user4@example.com', 'password4', 'Emily', 'Brown', '5678901234'),
    (NOW(), 'user5@example.com', 'password5', 'William', 'Taylor', '7890123456'),
    (NOW(), 'user6@example.com', 'password6', 'Olivia', 'Anderson', '9012345678'),
    (NOW(), 'user7@example.com', 'password7', 'James', 'Martinez', '2345678901'),
    (NOW(), 'user8@example.com', 'password8', 'Sophia', 'Hernandez', '4567890123'),
    (NOW(), 'user9@example.com', 'password9', 'Alexander', 'Lopez', '6789012345'),
    (NOW(), 'user10@example.com', 'password10', 'Mia', 'Gonzalez', '8901234567'),
    (NOW(), 'user11@example.com', 'password11', 'Ethan', 'Wilson', '0123456789'),
    (NOW(), 'user12@example.com', 'password12', 'Charlotte', 'Davies', '3210987654'),
    (NOW(), 'user13@example.com', 'password13', 'Daniel', 'Clark', '5432109876'),
    (NOW(), 'user14@example.com', 'password14', 'Amelia', 'Walker', '7654321098'),
    (NOW(), 'user15@example.com', 'password15', 'Matthew', 'Thomas', '9876543210'),
    (NOW(), 'user16@example.com', 'password16', 'Ava', 'Moore', '8765432109'),
    (NOW(), 'user17@example.com', 'password17', 'Andrew', 'White', '6543210987'),
    (NOW(), 'user18@example.com', 'password18', 'Harper', 'Allen', '4321098765'),
    (NOW(), 'user19@example.com', 'password19', 'Joseph', 'Young', '2109876543'),
    (NOW(), 'user20@example.com', 'password20', 'Ella', 'Harris', '0987654321'),
    (NOW(), 'user21@example.com', 'password21', 'Benjamin', 'King', '8765432109'),
    (NOW(), 'user22@example.com', 'password22', 'Lily', 'Scott', '6543210987'),
    (NOW(), 'user23@example.com', 'password23', 'Christopher', 'Lee', '4321098765'),
    (NOW(), 'user24@example.com', 'password24', 'Grace', 'Turner', '2109876543'),
    (NOW(), 'user25@example.com', 'password25', 'Lucas', 'Wright', '0987654321'),
    (NOW(), 'user26@example.com', 'password26', 'Evelyn', 'Adams', '1234567890'),
    (NOW(), 'user27@example.com', 'password27', 'David', 'Baker', '0987654321'),
    (NOW(), 'user28@example.com', 'password28', 'Emma', 'Carter', '3456789012'),
    (NOW(), 'user29@example.com', 'password29', 'Logan', 'Edwards', '5678901234'),
    (NOW(), 'user30@example.com', 'password30', 'Madison', 'Foster', '7890123456'),
    (NOW(), 'user31@example.com', 'password31', 'Noah', 'Gray', '9012345678'),
    (NOW(), 'user32@example.com', 'password32', 'Avery', 'Hill', '2345678901'),
    (NOW(), 'user33@example.com', 'password33', 'Oliver', 'Irwin', '4567890123'),
    (NOW(), 'user34@example.com', 'password34', 'Chloe', 'Jones', '6789012345'),
    (NOW(), 'user35@example.com', 'password35', 'Sophie', 'Keller', '8901234567'),
    (NOW(), 'user36@example.com', 'password36', 'William', 'Lawrence', '0123456789'),
    (NOW(), 'user37@example.com', 'password37', 'Abigail', 'Miller', '3210987654'),
    (NOW(), 'user38@example.com', 'password38', 'Elijah', 'Nelson', '5432109876'),
    (NOW(), 'user39@example.com', 'password39', 'Elena', 'Owens', '7654321098'),
    (NOW(), 'user40@example.com', 'password40', 'Gabriel', 'Parker', '9876543210'),
    (NOW(), 'user41@example.com', 'password41', 'Hannah', 'Quinn', '8765432109'),
    (NOW(), 'user42@example.com', 'password42', 'Isaac', 'Roberts', '6543210987'),
    (NOW(), 'user43@example.com', 'password43', 'Isabella', 'Sanders', '4321098765'),
    (NOW(), 'user44@example.com', 'password44', 'Jackson', 'Thompson', '2109876543'),
    (NOW(), 'user45@example.com', 'password45', 'Liam', 'Underwood', '0987654321'),
    (NOW(), 'user46@example.com', 'password46', 'Natalie', 'Vaughn', '8765432109'),
    (NOW(), 'user47@example.com', 'password47', 'Nathan', 'Woods', '6543210987'),
    (NOW(), 'user48@example.com', 'password48', 'Olivia', 'Xavier', '4321098765'),
    (NOW(), 'user49@example.com', 'password49', 'Peter', 'Young', '2109876543'),
    (NOW(), 'user50@example.com', 'password50', 'Quinn', 'Zimmerman', '0987654321'),
	(NOW(), 'user51@example.com', 'password51', 'Rachel', 'Abbott', '1234567890'),
    (NOW(), 'user52@example.com', 'password52', 'Brandon', 'Brown', '0987654321'),
    (NOW(), 'user53@example.com', 'password53', 'Sophia', 'Carter', '3456789012'),
    (NOW(), 'user54@example.com', 'password54', 'Cameron', 'Davies', '5678901234'),
    (NOW(), 'user55@example.com', 'password55', 'Rebecca', 'Edwards', '7890123456'),
    (NOW(), 'user56@example.com', 'password56', 'Dylan', 'Fisher', '9012345678'),
    (NOW(), 'user57@example.com', 'password57', 'Victoria', 'Garcia', '2345678901'),
    (NOW(), 'user58@example.com', 'password58', 'Tristan', 'Hill', '4567890123'),
    (NOW(), 'user59@example.com', 'password59', 'Aria', 'Ingram', '6789012345'),
    (NOW(), 'user60@example.com', 'password60', 'Cole', 'Johnson', '8901234567'),
    (NOW(), 'user61@example.com', 'password61', 'Hailey', 'Keller', '0123456789'),
    (NOW(), 'user62@example.com', 'password62', 'Zachary', 'Lawrence', '3210987654'),
    (NOW(), 'user63@example.com', 'password63', 'Aaliyah', 'Morgan', '5432109876'),
    (NOW(), 'user64@example.com', 'password64', 'Eli', 'Nelson', '7654321098'),
    (NOW(), 'user65@example.com', 'password65', 'Holly', 'Owens', '9876543210'),
    (NOW(), 'user66@example.com', 'password66', 'Gabriel', 'Parker', '8765432109'),
    (NOW(), 'user67@example.com', 'password67', 'Isaiah', 'Quinn', '6543210987'),
    (NOW(), 'user68@example.com', 'password68', 'Lucy', 'Roberts', '4321098765'),
    (NOW(), 'user69@example.com', 'password69', 'Mason', 'Sanders', '2109876543'),
    (NOW(), 'user70@example.com', 'password70', 'Nora', 'Thompson', '0987654321'),
    (NOW(), 'user71@example.com', 'password71', 'Owen', 'Underwood', '8765432109'),
    (NOW(), 'user72@example.com', 'password72', 'Peyton', 'Vaughn', '6543210987'),
    (NOW(), 'user73@example.com', 'password73', 'Quinn', 'Wright', '4321098765'),
    (NOW(), 'user74@example.com', 'password74', 'Riley', 'Young', '2109876543'),
    (NOW(), 'user75@example.com', 'password75', 'Samantha', 'Zimmerman', '0987654321'),
	(NOW(), 'user76@example.com', 'password76', 'Ethan', 'Abbott', '1234567890'),
    (NOW(), 'user77@example.com', 'password77', 'Madison', 'Baker', '0987654321'),
    (NOW(), 'user78@example.com', 'password78', 'Ella', 'Carter', '3456789012'),
    (NOW(), 'user79@example.com', 'password79', 'Evan', 'Davies', '5678901234'),
    (NOW(), 'user80@example.com', 'password80', 'Brooklyn', 'Edwards', '7890123456'),
    (NOW(), 'user81@example.com', 'password81', 'Nathan', 'Fisher', '9012345678'),
    (NOW(), 'user82@example.com', 'password82', 'Sofia', 'Garcia', '2345678901'),
    (NOW(), 'user83@example.com', 'password83', 'Christian', 'Hill', '4567890123'),
    (NOW(), 'user84@example.com', 'password84', 'Audrey', 'Ingram', '6789012345'),
    (NOW(), 'user85@example.com', 'password85', 'Christopher', 'Johnson', '8901234567'),
    (NOW(), 'user86@example.com', 'password86', 'Zoe', 'Keller', '0123456789'),
    (NOW(), 'user87@example.com', 'password87', 'Xavier', 'Lawrence', '3210987654'),
    (NOW(), 'user88@example.com', 'password88', 'Natalie', 'Morgan', '5432109876'),
    (NOW(), 'user89@example.com', 'password89', 'Gabriella', 'Nelson', '7654321098'),
    (NOW(), 'user90@example.com', 'password90', 'Isaac', 'Owens', '9876543210'),
    (NOW(), 'user91@example.com', 'password91', 'Alyssa', 'Parker', '8765432109'),
    (NOW(), 'user92@example.com', 'password92', 'Tyler', 'Quinn', '6543210987'),
    (NOW(), 'user93@example.com', 'password93', 'Hannah', 'Roberts', '4321098765'),
    (NOW(), 'user94@example.com', 'password94', 'Jordan', 'Sanders', '2109876543'),
    (NOW(), 'user95@example.com', 'password95', 'Landon', 'Thompson', '0987654321'),
    (NOW(), 'user96@example.com', 'password96', 'Leah', 'Underwood', '8765432109'),
    (NOW(), 'user97@example.com', 'password97', 'Aidan', 'Vaughn', '6543210987'),
    (NOW(), 'user98@example.com', 'password98', 'Hailey', 'Wright', '4321098765'),
    (NOW(), 'user99@example.com', 'password99', 'Carter', 'Young', '2109876543'),
    (NOW(), 'user100@example.com', 'password100', 'Mila', 'Zimmerman', '0987654321'),
    (NOW(), 'user101@example.com', 'password101', 'Connor', 'Abbott', '1234567890'),
    (NOW(), 'user102@example.com', 'password102', 'Ava', 'Baker', '0987654321'),
    (NOW(), 'user103@example.com', 'password103', 'Elijah', 'Carter', '3456789012'),
    (NOW(), 'user104@example.com', 'password104', 'Scarlett', 'Davies', '5678901234'),
    (NOW(), 'user105@example.com', 'password105', 'Grayson', 'Edwards', '7890123456');
    
INSERT INTO EVENT (Inserted_at, Start_date, Start_time, Venue, Abstract_deadline, Pub_date, Pub_time, Max_cap, Description, Event_name, Type, City, State, Street, Zip, Status, End_date, End_time, User_id, Uni_id)
VALUES
    (NOW(), '2024-05-10', '09:00:00', 'Convention Center', '2024-04-30', '2024-05-01', '08:00:00', 200, 'Annual Tech Conference', 'TechCon 2024', 'Oral Presentation', 'New York City', 'NY', 'Broadway St', '10001', 'Active', '2024-05-12', '18:00:00', 1, 1),
    (NOW(), '2024-06-15', '10:00:00', 'City Hall Auditorium', '2024-06-01', '2024-05-01', '10:00:00', 150, 'Leadership Summit', 'Leadership Forum', 'Oral Presentation', 'Los Angeles', 'CA', 'Main St', '90012', 'Active', '2024-06-17', '16:00:00', 1, 1),
    (NOW(), '2024-07-20', '14:00:00', 'Exhibition Center', '2024-07-10', '2024-05-05', '13:00:00', 300, 'Startup Showcase', 'Startup Expo', 'Poster', 'San Francisco', 'CA', 'Market St', '94103', 'Active', '2024-07-22', '20:00:00', 1, 1),
    (NOW(), '2024-08-05', '11:00:00', 'Community Center', '2024-07-25', '2024-08-01', '09:00:00', 100, 'Health & Wellness Workshop', 'Wellness Retreat', 'Oral Presentation', 'Chicago', 'IL', 'Lake Shore Dr', '60601', 'Active', '2024-08-07', '15:00:00', 1, 1),
    (NOW(), '2024-09-10', '09:30:00', 'University Auditorium', '2024-08-30', '2024-05-01', '11:00:00', 250, 'Education Symposium', 'EduFest', 'Oral Presentation', 'Boston', 'MA', 'College Ave', '02138', 'Active', '2024-09-12', '17:30:00', 1, 1),
    (NOW(), '2024-10-15', '13:00:00', 'Hotel Conference Room', '2024-10-05', '2024-05-01', '14:00:00', 120, 'Marketing Conference', 'MarkCon', 'Oral Presentation', 'Seattle', 'WA', 'Pine St', '98101', 'Active', '2024-10-17', '19:00:00', 1, 1),
    (NOW(), '2024-11-20', '10:30:00', 'Convention Center', '2024-11-10', '2024-05-05', '12:00:00', 180, 'Art Exhibition', 'Art Expo', 'Poster', 'Miami', 'FL', 'Ocean Dr', '33139', 'Active', '2024-11-22', '16:30:00', 1, 1),
    (NOW(), '2024-12-05', '12:00:00', 'Technology Park', '2024-11-25', '2024-05-01', '10:00:00', 80, 'Robotics Workshop', 'Robotics Lab', 'Oral Presentation', 'Austin', 'TX', 'Research Blvd', '78759', 'Active', '2024-12-07', '14:00:00', 1, 1),
    (NOW(), '2025-01-10', '10:00:00', 'Convention Center', '2024-12-30', '2024-05-01', '11:00:00', 150, 'Finance Symposium', 'Finance Forum', 'Oral Presentation', 'San Diego', 'CA', 'Harbor Dr', '92101', 'Active', '2025-01-12', '16:00:00', 1, 1),
    (NOW(), '2025-02-15', '11:00:00', 'Community Center', '2025-02-05', '2024-02-01', '12:00:00', 200, 'Entrepreneurship Summit', 'Startup Summit', 'Oral Presentation', 'Denver', 'CO', 'Colfax Ave', '80202', 'Active', '2025-02-17', '18:00:00', 1, 1),
    (NOW(), '2025-03-20', '14:30:00', 'University Auditorium', '2025-03-10', '2024-03-01', '15:00:00', 300, 'Science Conference', 'SciCon', 'Oral Presentation', 'Washington D.C.', 'DC', 'Pennsylvania Ave', '20001', 'Active', '2025-03-22', '20:30:00', 1, 1),
    (NOW(), '2024-06-01', '09:00:00', 'Community Center', '2024-05-20', '2024-05-25', '10:00:00', 150, 'Environmental Conference', 'EnviroSummit', 'Oral Presentation', 'Seattle', 'WA', 'Green St', '98101', 'Active', '2024-06-03', '18:00:00', 2, 2),
    (NOW(), '2024-07-15', '10:30:00', 'Convention Center', '2024-07-05', '2024-04-10', '12:00:00', 200, 'Healthcare Symposium', 'HealthCon', 'Oral Presentation', 'Chicago', 'IL', 'Hospital Dr', '60601', 'Active', '2024-07-17', '16:30:00', 3, 3),
    (NOW(), '2024-08-20', '14:00:00', 'University Auditorium', '2024-08-10', '2024-04-15', '15:00:00', 300, 'Literature Festival', 'LitFest', 'Poster', 'Boston', 'MA', 'Library Ave', '02138', 'Active', '2024-08-22', '20:30:00', 4, 4),
    (NOW(), '2024-09-05', '11:00:00', 'Hotel Conference Room', '2024-08-25', '2024-04-30', '09:30:00', 100, 'Sports Summit', 'SportSummit', 'Oral Presentation', 'Los Angeles', 'CA', 'Stadium Dr', '90012', 'Active', '2024-09-07', '15:00:00', 5, 5),
    (NOW(), '2024-10-10', '09:30:00', 'Convention Center', '2024-09-30', '2024-4-05', '10:00:00', 250, 'Music Festival', 'MusicFest', 'Poster', 'New York City', 'NY', 'Music St', '10001', 'Active', '2024-10-12', '17:30:00', 6, 3),
    (NOW(), '2024-11-15', '12:00:00', 'Technology Park', '2024-11-05', '2024-04-10', '14:00:00', 120, 'Technology Symposium', 'TechSym', 'Oral Presentation', 'San Francisco', 'CA', 'Innovation Ave', '94103', 'Active', '2024-11-17', '19:00:00', 7, 4),
    (NOW(), '2024-12-20', '13:30:00', 'Exhibition Center', '2024-12-10', '2024-04-15', '14:30:00', 180, 'Art Expo', 'Art Exhibition', 'Oral Presentation', 'Miami', 'FL', 'Art St', '33139', 'Active', '2024-12-22', '16:30:00', 8, 4),
    (NOW(), '2025-01-05', '10:00:00', 'City Hall Auditorium', '2024-12-25', '2024-04-01', '11:00:00', 80, 'Fashion Show', 'FashionFest', 'Oral Presentation', 'Chicago', 'IL', 'Fashion St', '60601', 'Active', '2025-01-07', '14:00:00', 9, 5),
    (NOW(), '2025-02-10', '11:30:00', 'Community Center', '2025-01-30', '2024-02-05', '12:30:00', 150, 'Food Expo', 'FoodExpo', 'Poster', 'Seattle', 'WA', 'Food Ave', '98101', 'Active', '2025-02-12', '18:30:00', 10, 2),
    (NOW(), '2025-03-15', '14:00:00', 'University Auditorium', '2025-03-05', '2024-03-10', '15:30:00', 200, 'Education Fair', 'EduFair', 'Oral Presentation', 'Boston', 'MA', 'Education St', '02138', 'Active', '2025-03-17', '20:00:00', 11, 2),
	(NOW(), '2024-07-10', '09:00:00', 'Convention Center', '2024-06-30', '2024-04-25', '15:00:00', 200, 'Annual Conference', 'Annual Conference', 'Poster', 'New York', 'NY', 'Main Street', '10001', 'Canceled', '2024-07-12', '18:00:00', 1, 1),
    (NOW(), '2024-08-15', '10:30:00', 'Exhibition Hall', '2024-08-05', '2024-04-01', '16:00:00', 150, 'Tech Summit', 'Tech Summit', 'Online', 'San Francisco', 'CA', 'Tech Avenue', '94102', 'Canceled', '2024-08-17', '16:30:00', 2, 2),
    (NOW(), '2024-09-20', '08:00:00', 'Auditorium', '2024-09-10', '2024-04-05', '14:30:00', 300, 'Science Symposium', 'Science Symposium', 'Oral Presentation', 'Los Angeles', 'CA', 'Science Road', '90012', 'Canceled', '2024-09-22', '17:00:00', 3, 3),
    (NOW(), '2024-10-25', '09:00:00', 'Convention Center', '2024-10-15', '2024-04-10', '12:00:00', 250, 'Business Expo', 'Business Expo', 'Online', 'Chicago', 'IL', 'Commerce Street', '60601', 'Canceled', '2024-10-27', '18:00:00', 4, 4),
    (NOW(), '2024-11-05', '10:00:00', 'Exhibition Hall', '2024-10-26', '2024-04-20', '10:30:00', 180, 'Marketing Conference', 'Marketing Conference', 'Oral Presentation', 'Miami', 'FL', 'Marketing Avenue', '33101', 'Canceled', '2024-11-07', '17:30:00', 5, 5),
    (NOW(), '2024-12-10', '08:30:00', 'Auditorium', '2024-12-01', '2024-04-25', '09:45:00', 220, 'Education Summit', 'Education Summit', 'Poster', 'Seattle', 'WA', 'Education Street', '98101', 'Canceled', '2024-12-12', '16:30:00', 6, 2),
    (NOW(), '2025-01-15', '09:00:00', 'Convention Center', '2025-01-05', '2024-01-01', '14:00:00', 180, 'Startup Workshop', 'Startup Workshop', 'Online', 'Boston', 'MA', 'Startup Lane', '02101', 'Canceled', '2025-01-17', '18:00:00', 7, 1),
    (NOW(), '2025-02-20', '10:30:00', 'Exhibition Hall', '2025-02-10', '2024-04-05', '11:20:00', 200, 'Art Exhibition', 'Art Exhibition', 'Oral Presentation', 'Houston', 'TX', 'Art Avenue', '77001', 'Canceled', '2025-02-22', '17:30:00', 8, 5),
    (NOW(), '2025-03-25', '08:00:00', 'Auditorium', '2025-03-15', '2024-03-10', '13:45:00', 300, 'Finance Forum', 'Finance Forum', 'Poster', 'Denver', 'CO', 'Finance Street', '80201', 'Canceled', '2025-03-27', '16:30:00', 9, 4),
    (NOW(), '2025-04-30', '09:00:00', 'Convention Center', '2025-04-20', '2024-04-15', '16:15:00', 250, 'Healthcare Symposium', 'Healthcare Symposium', 'Online', 'Philadelphia', 'PA', 'Healthcare Lane', '19101', 'Canceled', '2025-05-02', '18:00:00', 10, 1);
    
    INSERT INTO EVENT (Inserted_at, Start_date, Start_time, Venue, Abstract_deadline, Max_cap, Description, Event_name, Type, City, State, Street, Zip, Status, End_date, End_time, User_id, Uni_id)
VALUES
    (NOW(), '2025-04-10', '09:00:00', 'University Auditorium', '2025-03-30', 150, 'Science Symposium', 'SciSymposium', 'Oral Presentation', 'Los Angeles', 'CA', 'University Ave', '90012', 'Active', '2025-04-12', '18:00:00', 20, 5),
    (NOW(), '2025-05-15', '10:30:00', 'University Hall', '2025-05-05', 200, 'Engineering Expo', 'EngExpo', 'Poster', 'San Francisco', 'CA', 'Engineering St', '94103', 'Active', '2025-05-17', '16:30:00', 10, 5);

INSERT INTO PRESENTERS (Fname, Lname, Event_id, Inserted_at)
VALUES 
    ('John', 'Doe', 1, NOW()), ('Jane', 'Smith', 2, NOW()), ('Michael', 'Johnson', 3, NOW()), 
    ('Emily', 'Brown', 4, NOW()), ('David', 'Wilson', 5, NOW()), ('Sarah', 'Miller', 6, NOW()), 
    ('Matthew', 'Martinez', 7, NOW()), ('Jessica', 'Taylor', 8, NOW()), ('Andrew', 'Lee', 9, NOW()), 
    ('Lauren', 'Garcia', 10, NOW()), ('Daniel', 'Clark', 11, NOW()), ('Olivia', 'Davis', 12, NOW()), 
    ('Ethan', 'Wilson', 13, NOW()), ('Ava', 'Anderson', 14, NOW()), ('Noah', 'Taylor', 15, NOW()), 
    ('Sophia', 'Moore', 16, NOW()), ('Logan', 'Jackson', 17, NOW()), ('Isabella', 'White', 18, NOW()), 
    ('Mia', 'Harris', 19, NOW()), ('James', 'Martin', 20, NOW()), ('Benjamin', 'Thompson', 21, NOW()), 
    ('Charlotte', 'Lewis', 22, NOW()), ('William', 'Robinson', 23, NOW()),
	('John', 'Doe', 24, NOW()),
    ('Jane', 'Smith', 25, NOW()),
    ('Michael', 'Johnson', 26, NOW()),
    ('Emily', 'Brown', 27, NOW()),
    ('David', 'Wilson', 28, NOW()),
    ('Sarah', 'Miller', 29, NOW()),
    ('Matthew', 'Martinez', 30, NOW()),
    ('Jessica', 'Taylor', 31, NOW()),
    ('Andrew', 'Lee', 32, NOW()),
    ('Lauren', 'Garcia', 33, NOW());
    
INSERT INTO KEYNOTE_SPEAKERS (Fname, Lname, Event_id, Inserted_at)
VALUES
    ('Alice', 'Johnson', 1, NOW()),
    ('Bob', 'Smith', 2, NOW()),
    ('Carol', 'Williams', 3, NOW()),
    ('David', 'Brown', 4, NOW()),
    ('Emma', 'Jones', 5, NOW()),
    ('Frank', 'Davis', 6, NOW()),
    ('Grace', 'Miller', 7, NOW()),
    ('Henry', 'Wilson', 8, NOW()),
    ('Isabel', 'Taylor', 9, NOW()),
    ('Jack', 'Martinez', 10, NOW()),
	('Liam', 'Adams', 11, NOW()),
    ('Nora', 'Hernandez', 12, NOW()),
    ('Oscar', 'Garcia', 13, NOW()),
    ('Penelope', 'Lopez', 14, NOW()),
    ('Quinn', 'Flores', 15, NOW()),
    ('Rachel', 'Perez', 16, NOW()),
    ('Samuel', 'Gonzalez', 17, NOW()),
    ('Taylor', 'Rodriguez', 18, NOW()),
    ('Ursula', 'Torres', 19, NOW()),
    ('Victor', 'Ramirez', 20, NOW()),
    ('Wendy', 'Reyes', 21, NOW()),
    ('Xavier', 'Vargas', 22, NOW()),
    ('Yara', 'Jimenez', 23, NOW()),
	('Alice', 'Johnson', 24, NOW()),
    ('Bob', 'Smith', 25, NOW()),
    ('Carol', 'Williams', 26, NOW()),
    ('David', 'Brown', 27, NOW()),
    ('Emma', 'Jones', 28, NOW()),
    ('Frank', 'Davis', 29, NOW()),
    ('Grace', 'Miller', 30, NOW()),
    ('Henry', 'Wilson', 31, NOW()),
    ('Isabel', 'Taylor', 32, NOW()),
    ('Jack', 'Martinez', 33, NOW());

INSERT INTO SPONSORS (Spon_name, Event_id, Inserted_at)
VALUES
    ('ABC Corporation', 1, NOW()),
    ('XYZ Enterprises', 2, NOW()),
    ('Global Solutions Inc.', 3, NOW()),
    ('Tech Innovations Ltd.', 4, NOW()),
    ('Wellness Foundation', 5, NOW()),
    ('Finance Partners LLC', 6, NOW()),
    ('Artistic Creations Co.', 7, NOW()),
    ('RoboTech Industries', 8, NOW()),
    ('Investment Bankers Association', 9, NOW()),
    ('Startup Accelerator', 10, NOW()),
	('Healthcare Solutions Group', 11, NOW()),
    ('Fashion Trends Inc.', 12, NOW()),
    ('Food Suppliers Association', 13, NOW()),
    ('Education Foundation', 14, NOW()),
    ('Science Innovations Ltd.', 15, NOW()),
    ('Engineering Consortium', 16, NOW()),
    ('Music Industry Alliance', 17, NOW()),
    ('Environmental Conservation Society', 18, NOW()),
    ('Literature Lovers Club', 19, NOW()),
    ('Sports Management Agency', 20, NOW()),
    ('Art Promotion Society', 21, NOW()),
    ('Technology Council', 22, NOW()),
    ('Finance Forum', 23, NOW()),
	('ABC Corporation', 24, NOW()),
    ('XYZ Enterprises', 25, NOW()),
    ('Global Solutions Inc.', 26, NOW()),
    ('Tech Innovations Ltd.', 27, NOW()),
    ('Wellness Foundation', 28, NOW()),
    ('Finance Partners LLC', 29, NOW()),
    ('Artistic Creations Co.', 30, NOW()),
    ('RoboTech Industries', 31, NOW()),
    ('Investment Bankers Association', 32, NOW()),
    ('Startup Accelerator', 33, NOW());

INSERT INTO ENROLLED_BY (User_id, Event_id, Inserted_at)
VALUES
    (1, 1, NOW()),
    (2, 1, NOW()),
    (3, 1, NOW()),
    (4, 1, NOW()),
    (5, 1, NOW()),
    (1, 2, NOW()),
    (2, 2, NOW()),
    (3, 2, NOW()),
    (4, 2, NOW()),
    (5, 2, NOW()),
    (1, 3, NOW()),
    (2, 3, NOW()),
    (3, 3, NOW()),
    (4, 3, NOW()),
    (5, 3, NOW()),
    (1, 4, NOW()),
    (2, 4, NOW()),
    (3, 4, NOW()),
    (4, 4, NOW()),
    (5, 4, NOW()),
    (1, 5, NOW()),
    (2, 5, NOW()),
    (3, 5, NOW()),
    (4, 5, NOW()),
    (5, 5, NOW()),
	(6, 6, NOW()),
    (7, 6, NOW()),
    (8, 6, NOW()),
    (9, 6, NOW()),
    (10, 6, NOW()),
    (11, 7, NOW()),
    (12, 7, NOW()),
    (13, 7, NOW()),
    (14, 7, NOW()),
    (15, 7, NOW()),
    (16, 8, NOW()),
    (17, 8, NOW()),
    (18, 8, NOW()),
    (19, 8, NOW()),
    (20, 8, NOW()),
    (21, 9, NOW()),
    (22, 9, NOW()),
    (23, 9, NOW()),
    (24, 9, NOW()),
    (25, 9, NOW()),
    (26, 10, NOW()),
    (27, 10, NOW()),
    (28, 10, NOW()),
    (29, 10, NOW()),
    (30, 10, NOW()),
	(6, 11, NOW()),
    (7, 11, NOW()),
    (8, 11, NOW()),
    (9, 11, NOW()),
    (10, 11, NOW()),
    (11, 12, NOW()),
    (12, 12, NOW()),
    (13, 12, NOW()),
    (14, 12, NOW()),
    (15, 12, NOW()),
    (16, 13, NOW()),
    (17, 13, NOW()),
    (18, 13, NOW()),
    (19, 13, NOW()),
    (20, 13, NOW()),
    (21, 14, NOW()),
    (22, 14, NOW()),
    (23, 14, NOW()),
    (24, 14, NOW()),
    (25, 14, NOW()),
    (26, 15, NOW()),
    (27, 15, NOW()),
    (28, 15, NOW()),
    (29, 15, NOW()),
    (30, 15, NOW()),
	(1, 16, NOW()),
    (2, 16, NOW()),
    (3, 16, NOW()),
    (4, 16, NOW()),
    (5, 16, NOW()),
    (6, 17, NOW()),
    (7, 17, NOW()),
    (8, 17, NOW()),
    (9, 17, NOW()),
    (10, 17, NOW()),
    (11, 18, NOW()),
    (12, 18, NOW()),
    (13, 18, NOW()),
    (14, 18, NOW()),
    (15, 18, NOW()),
    (16, 19, NOW()),
    (17, 19, NOW()),
    (18, 19, NOW()),
    (19, 19, NOW()),
    (20, 19, NOW()),
    (21, 20, NOW()),
    (22, 20, NOW()),
    (23, 20, NOW()),
    (24, 20, NOW()),
    (25, 20, NOW()),
	(26, 21, NOW()),
    (27, 21, NOW()),
    (28, 21, NOW()),
	(29, 22, NOW()),
    (30, 22, NOW()),
    (1, 23, NOW());

CREATE VIEW Users_With_More_Than_Ten_Events AS
SELECT U.F_name, U.L_name, U.Email, U.P_number
FROM USER U
JOIN (
    SELECT User_id
    FROM EVENT
    GROUP BY User_id
    HAVING COUNT(*) > 10
) AS User_Event_Count ON U.User_id = User_Event_Count.User_id;

CREATE VIEW Events_With_More_Than_Hundred_Attendees AS
SELECT E.Event_id, E.Event_name, COUNT(EB.User_id) AS Attendee_Count
FROM EVENT E
JOIN ENROLLED_BY EB ON E.Event_id = EB.Event_id
GROUP BY E.Event_id
HAVING Attendee_Count > 100;

CREATE VIEW Closed_or_Canceled_Events AS
SELECT *
FROM EVENT
WHERE Status IN ('Canceled');