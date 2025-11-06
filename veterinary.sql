CREATE DATABASE veterinary;


CREATE TABLE owners(
    ownerid INT PRIMARY KEY,
    ofirstname VARCHAR(50),
    olastname VARCHAR(50),
    address VARCHAR(100),
    phone VARCHAR(15),
    email VARCHAR(100)
);


CREATE TABLE animals (
    animalid INT PRIMARY KEY,
    name VARCHAR(50),
    species VARCHAR(50),
    breed VARCHAR(50),
    dateofbirth DATE,
    gender VARCHAR(10),
    color VARCHAR(50),
    ownerid INT,
    FOREIGN KEY (ownerid) REFERENCES owners(ownerid)
);

CREATE TABLE appointments (
    appointid INT PRIMARY KEY,
    animalid INT,
    appointdate DATE,
    reason VARCHAR(255),
    FOREIGN KEY (animalid) REFERENCES animals(animalid)
);

CREATE TABLE doctors (
    doctorid INT PRIMARY KEY,
    dfirstname VARCHAR(50),
    dlastname VARCHAR(50),
    specialty VARCHAR(100),
    phone VARCHAR(15),
    email VARCHAR(100)
);

<<<<<<< HEAD

=======
>>>>>>> a803c9887b672205cae4d165026ab9aa15f2d5b1
CREATE TABLE invoices (
    invoiceid INT PRIMARY KEY,
    appointid INT,
    totalamount NUMERIC(10,2),
    paymentdate TIME,
    FOREIGN KEY (appointid) REFERENCES appointments(appointid)
);

CREATE TABLE medicalrecords (
    recordid INT PRIMARY KEY,
    animalid INT,
    visitdate DATE,
    diagnosis VARCHAR(255),
    treatment VARCHAR(255),
    doctorid INT,
    FOREIGN KEY (animalid) REFERENCES animals(animalid),
    FOREIGN KEY (doctorid) REFERENCES doctors(doctorid)
);


INSERT INTO owners (ownerid, ofirstname, olastname, address, phone, email) VALUES
(1, 'Maria', 'Lopez', 'Batangas City', '09123456781', 'maria.lopez@example.com'),
(2, 'Juan', 'Santos', 'Lipa City', '09123456782', 'juan.santos@example.com'),
(3, 'Ana', 'Reyes', 'Tanauan City', '09123456783', 'ana.reyes@example.com'),
(4, 'Mark', 'Dela Cruz', 'Rosario', '09123456784', 'mark.delacruz@example.com'),
(5, 'Jenny', 'Gomez', 'San Jose', '09123456785', 'jenny.gomez@example.com'),
(6, 'Paulo', 'Torres', 'Sto. Tomas', '09123456786', 'paulo.torres@example.com'),
(7, 'Sofia', 'Cortez', 'Malvar', '09123456787', 'sofia.cortez@example.com'),
(8, 'Leo', 'Ramos', 'Cuenca', '09123456788', 'leo.ramos@example.com'),
(9, 'Erika', 'Navarro', 'Balete', '09123456789', 'erika.navarro@example.com'),
(10, 'Carlos', 'Mendoza', 'Taysan', '09123456780', 'carlos.mendoza@example.com');

INSERT INTO animals (animalid, name, species, breed, dateofbirth, gender, color, ownerid) VALUES
(1, 'Buddy', 'Dog', 'Labrador', '2020-03-12', 'Male', 'Yellow', 1),
(2, 'Mittens', 'Cat', 'Persian', '2021-07-05', 'Female', 'White', 2),
(3, 'Rex', 'Dog', 'German Shepherd', '2019-11-20', 'Male', 'Black', 3),
(4, 'Luna', 'Cat', 'Siamese', '2022-01-11', 'Female', 'Cream', 4),
(5, 'Charlie', 'Dog', 'Beagle', '2018-09-14', 'Male', 'Brown', 5),
(6, 'Pepper', 'Hamster', 'Syrian', '2023-02-28', 'Female', 'Golden', 6),
(7, 'Max', 'Dog', 'Shih Tzu', '2020-06-30', 'Male', 'White', 7),
(8, 'Cleo', 'Cat', 'British Shorthair', '2021-04-19', 'Female', 'Gray', 8),
(9, 'Rocky', 'Dog', 'Bulldog', '2019-08-08', 'Male', 'Brindle', 9),
(10, 'Snow', 'Rabbit', 'Lionhead', '2022-12-01', 'Female', 'White', 10);

INSERT INTO appointments (appointid, animalid, appointdate, reason) VALUES
(1, 1, '2023-11-05', 'Annual check-up'),
(2, 2, '2023-10-20', 'Vaccination'),
(3, 3, '2023-09-15', 'Skin irritation'),
(4, 4, '2023-08-10', 'Eye infection'),
(5, 5, '2023-07-25', 'Dental cleaning'),
(6, 6, '2023-06-18', 'Routine wellness exam'),
(7, 7, '2023-05-09', 'Hair mat removal'),
(8, 8, '2023-04-12', 'Check for allergies'),
(9, 9, '2023-03-30', 'Breathing issue'),
(10, 10, '2023-02-14', 'General examination');

INSERT INTO doctors (doctorid, dfirstname, dlastname, specialty, phone, email) VALUES
(1, 'Maria', 'Santos', 'General Veterinarian', '987-654-3210', 'maria@example.com'),
(2, 'Antonio', 'Gonzales', 'Feline Specialist', '555-123-4567', 'antonio@example.com'),
(3, 'Felipe', 'Luna', 'Orthopedic Specialist', '111-222-3333', 'felipe@example.com'),
(4, 'Sofia', 'Reyes', 'Dermatology Specialist', '999-888-7777', 'sofia@example.com'),
(5, 'Luis', 'Torres', 'Surgery Specialist', '123-555-7777', 'luis@example.com'),
(6, 'Carmen', 'Fernandez', 'Ophthalmology Specialist', '333-222-1111', 'carmen@example.com'),
(7, 'Miguel', 'Del Rosario', 'Exotic Animal Specialist', '444-333-2222', 'miguel@example.com'),
(8, 'Patricia', 'Jimenez', 'Emergency Care Specialist', '222-444-6666', 'patricia@example.com'),
(9, 'Roberto', 'Navarro', 'Cardiology Specialist', '777-111-2222', 'roberto@example.com'),
(10, 'Elena', 'Martinez', 'Internal Medicine Specialist', '888-555-9999', 'elena@example.com');

INSERT INTO invoices(invoiceid, appointid, totalamount, paymentdate)
VALUES
(1, 1, 50.00, '09:30:00'),
(2, 2, 75.00, '14:15:00'),
(3, 3, 100.00, '11:00:00'),
(4, 4, 200.00, '13:45:00'),
(5, 5, 80.00, '10:30:00'),
(6, 6, 30.00, '15:00:00'),
(7, 7, 75.00, '09:15:00'),
(8, 8, 150.00, '16:30:00'),
(9, 9, 60.00, '14:45:00'),
(10, 10, 40.00, '11:30:00');

INSERT INTO medicalrecords (recordid, animalid, visitdate, diagnosis, treatment, doctorid)
VALUES 
(1, 1, '2023-01-05', 'Health check', 'N/A', 1),
(2, 2, '2023-01-10', 'Vaccination', 'Vaccine X', 1),
(3, 3, '2023-02-02', 'Sprained leg', 'Pain Medication', 3),
(4, 4, '2023-02-15', 'Dental cleaning', 'N/A', 1),
(5, 5, '2023-03-10', 'Skin infection', 'Antibiotics', 4),
(6, 6, '2023-03-10', 'Flea infestation', 'Flea Treatment', 2),
(7, 7, '2023-04-12', 'Vaccination', 'Vaccine Y', 1),
(8, 8, '2023-04-18', 'Spaying', 'N/A', 5),
(9, 9, '2023-05-02', 'Allergic reaction', 'Antihistamines', 4),
(10, 10, '2023-05-20', 'Conjunctivitis', 'Eye drops', 6);

ALTER TABLE owners
ADD registereddate DATE;

ALTER TABLE invoices
CHANGE paymentdate paymenttime TIME;

DELETE FROM appointments
WHERE animalid = (
    SELECT animalid FROM animals
    WHERE name = 'Simba'
);

UPDATE doctors
SET dlastname = 'Reyes-Gonzales'
WHERE dfirstname = 'Sofia';

SELECT DISTINCT species
FROM animals;

