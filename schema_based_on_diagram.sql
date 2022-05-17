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

CREATE TABLE invoices(
    id INT GENERATED ALWAYS AS IDENTITY,
    total_amount decimal,
    generated_at timestamp,
    payed_at timestamp,
    medical_history_id INT REFERENCES medical_histories(id),
    PRIMARY KEY(id)
);

CREATE TABLE treatments(
    id INT GENERATED ALWAYS AS IDENTITY,
    type VARCHAR,
    name VARCHAR,
    PRIMARY KEY(id)
);

CREATE TABLE invoice_items(
    id INT GENERATED ALWAYS AS IDENTITY,
    unit_price decimal,
    quantity INT,
    total_price decimal,
    invoice_id INT REFERENCES invoices(id),
    treament_id INT REFERENCES treatments(id),
    PRIMARY KEY(id)
);
