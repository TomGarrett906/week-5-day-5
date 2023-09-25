--Salesperson
CREATE TABLE Salesperson (
    salesperson_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50)
);


--Customer
CREATE TABLE Customer (
    customer_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50)
);


--Car
CREATE TABLE Car (
    car_id SERIAL PRIMARY KEY,
    vin_number VARCHAR(20), 
    make VARCHAR(50),
    model VARCHAR(50),
    new_or_used VARCHAR(10),
    salesperson_id INT REFERENCES Salesperson(salesperson_id),
    customer_id INT REFERENCES Customer(customer_id)
);


--Invoice
CREATE TABLE Invoice (
    invoice_id SERIAL PRIMARY KEY,
    invoice_date DATE,
    car_id INT REFERENCES Car(car_id),
    customer_id INT REFERENCES Customer(customer_id),
    salesperson_id INT REFERENCES Salesperson(salesperson_id)
);


--ServiceTicket
CREATE TABLE ServiceTicket (
    ticket_id SERIAL PRIMARY KEY,
    ticket_date DATE,
    car_id INT REFERENCES Car(car_id),
    customer_id INT REFERENCES Customer(customer_id)
);


--Mechanic
CREATE TABLE Mechanic (
    mechanic_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50)
);


--ServiceHistory
CREATE TABLE ServiceHistory (
    history_id SERIAL PRIMARY KEY,
    service_date DATE,
    car_id INT REFERENCES Car(car_id),
    mechanic_id INT REFERENCES Mechanic(mechanic_id)
);