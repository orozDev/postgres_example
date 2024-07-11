CREATE TABLE employee (
    id BIGSERIAl NOT NULL PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(100),
    gender VARCHAR(6) NOT NULL,
    date_of_birth DATE NOT NULL,
    country VARCHAR(50) NOT NULL
);