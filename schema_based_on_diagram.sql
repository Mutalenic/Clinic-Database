CREATE TABLE patients(
id INT GENERATED ALWAYS AS IDENTITY,
name VARCHAR(200),
date_of_birth date,
PRIMARY KEY(id));

CREATE TABLE medical_histories(
    id INT GENERATED ALWAYS AS IDENTITY,
    admitted_at timestamp,
    patient_id INT REFERENCES patients(id),
    status VARCHAR(300),
    PRIMARY KEY(id)
);