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
