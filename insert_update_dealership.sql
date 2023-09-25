--Salespersons
INSERT INTO Salesperson (first_name, last_name)
VALUES
    ('Jennifer', 'Adams'),
    ('Richard', 'Wilson'),
    ('Linda', 'Garcia'),
    ('Thomas', 'Anderson');

   
--Customers
INSERT INTO Customer (first_name, last_name)
VALUES
    ('Karen', 'Martinez'),
    ('William', 'Taylor'),
    ('Susan', 'Wright'),
    ('Daniel', 'Harris');

   
--Cars
INSERT INTO Car (vin_number, make, model, new_or_used, salesperson_id, customer_id)
VALUES
    ('789123456', 'Nissan', 'Altima', 'Used', 5, 5),
    ('321987654', 'Ford', 'Escape', 'New', 6, 6),
    ('654123789', 'Toyota', 'Corolla', 'New', 7, 7),
    ('987321654', 'Honda', 'Accord', 'Used', 8, 8);
 
INSERT INTO Customer (first_name, last_name)
VALUES ('Mary', 'Johnson');  
   
   
--Invoices
INSERT INTO Invoice (invoice_date, car_id, customer_id, salesperson_id)
VALUES
    ('2023-10-01', 5, 5, 5),
    ('2023-10-02', 6, 6, 6),
    ('2023-10-03', 7, 7, 7),
    ('2023-10-04', 8, 8, 8);

   
--Service Tickets
INSERT INTO ServiceTicket (ticket_date, car_id, customer_id)
VALUES
    ('2023-10-05', 5, 5),
    ('2023-10-06', 6, 6),
    ('2023-10-07', 7, 7),
    ('2023-10-08', 8, 8);

   
--Mechanics
INSERT INTO Mechanic (first_name, last_name)
VALUES
    ('Laura', 'Jones'),
    ('Brian', 'Smith'),
    ('Patricia', 'Davis'),
    ('Christopher', 'Brown');
     
   
--Service History
INSERT INTO ServiceHistory (service_date, car_id, mechanic_id)
VALUES
    ('2023-10-06', 5, 1),
    ('2023-10-07', 6, 2),
    ('2023-10-08', 7, 3),
    ('2023-10-09', 8, 4);

   
--Procedure
CREATE OR REPLACE PROCEDURE insert_customer(
    _first_name VARCHAR(50),
    _last_name VARCHAR(50)
) 
AS $$
$$ LANGUAGE plpgsql; 
BEGIN
    INSERT INTO Customer (first_name, last_name)
    VALUES (_first_name, _last_name);
END;


CALL insert_customer('Alice', 'Smith');


--Function
CREATE OR REPLACE FUNCTION insert_salesperson(
    _first_name VARCHAR(50),
    _last_name VARCHAR(50),
    _email VARCHAR(100)
) RETURNS VOID 
AS $MAIN$
$$ LANGUAGE plpgsql;
BEGIN
    INSERT INTO Salesperson (first_name, last_name)
    VALUES (_first_name, _last_name, _email);
END;


SELECT insert_salesperson('James', 'May');