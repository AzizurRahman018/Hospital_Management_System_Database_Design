-- Active: 1734704222514@@127.0.0.1@3306@hms
CREATE TABLE Doctors(
    doctors_id INT PRIMARY KEY AUTO_INCREMENT,
    doctors_name VARCHAR(255) NOT NULL,
    doctors_specialization VARCHAR(255) NOT NULL,
    doctors_phone  INT NOT NULL,
    dpartments_id INT,
    FOREIGN KEY (dpartments_id) REFERENCES Departments(dpartments_id) ON DELETE CASCADE
);



CREATE TABLE Patients(
    patients_id INT PRIMARY KEY AUTO_INCREMENT,
    patients_name VARCHAR(255) NOT NULL,
    patients_age INT NOT NULL,
    patients_gender VARCHAR(255) Not NULL,
    patients_phone INT NOT NULL



);

CREATE TABLE Appointments(

        appoitments_id INT PRIMARY KEY AUTO_INCREMENT,
        appoitments_date DATETIME NOT NULL,
        appoitments_Status VARCHAR(255) NOT NULL,
        doctors_id INT,
        patients_id INT,
        FOREIGN KEY (doctors_id) REFERENCES Doctors(doctors_id) ON DELETE CASCADE,
        FOREIGN KEY (patients_id) REFERENCES Patients(patients_id) ON DELETE CASCADE

);

CREATE TABLE Departments(

     dpartments_id INT PRIMARY KEY AUTO_INCREMENT,
     dpartments_name VARCHAR(255) NOT NULL,
     dpartments_location VARCHAR(255) NOT NULL




)

INSERT INTO Departments (dpartments_name, dpartments_location) VALUES
('Cardiology', 'Building A'), 
('Neurology', 'Building B'),
('Orthopedics', 'Building C'),
('Pediatrics', 'Building D'),
('General Medicine', 'Building E');

INSERT INTO Doctors (doctors_name, doctors_specialization, doctors_phone, dpartments_id) VALUES
('Dr. Alice', 'Cardiologist', '1234567890', 1),
('Dr. Bob', 'Neurologist', '1234567891', 2),
('Dr. Carol', 'Orthopedic', '1234567892', 3),
('Dr. Dave', 'Pediatrician', '1234567893', 4),
('Dr. Eve', 'General Physician', '1234567894', 5);


INSERT INTO Patients (patients_name, patients_age, patients_gender, patients_phone) VALUES
('John Doe', 45, 'Male', '9876543210'),
('Jane Smith', 34, 'Female', '9876543211'),
('Robert Brown', 60, 'Male', '9876543212'),
('Emily Davis', 28, 'Female', '9876543213'),
('Michael Johnson', 55, 'Male', '9876543214');

INSERT INTO Appointments (appoitments_date, appoitments_Status, doctors_id, patients_id) VALUES
('2024-12-21 10:00:00', 'Scheduled', 1, 1),
('2024-12-21 11:00:00', 'Completed', 2, 2),
('2024-12-22 09:30:00', 'Cancelled', 3, 3),
('2024-12-23 14:00:00', 'Scheduled', 4, 4),
('2024-12-24 12:00:00', 'Completed', 5, 5);
