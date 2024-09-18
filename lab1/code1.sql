CREATE TABLE Airline_info (
    airline_id INT,
    airline_code VARCHAR(30),
    airline_name VARCHAR(50),
    airline_country VARCHAR(50),
    created_at TIMESTAMP,
    updated_at TIMESTAMP,
    info VARCHAR(50)
);

CREATE TABLE Airport (
    airport_id INT,
    airport_name VARCHAR(50),
    country VARCHAR(50),
    state VARCHAR(50),
    city VARCHAR(50),
    created_at TIMESTAMP,
    updated_at TIMESTAMP
);

CREATE TABLE Baggage_check (
    baggage_check_id INT,
    check_result VARCHAR(50),
    created_at TIMESTAMP,
    updated_at TIMESTAMP,
    booking_id INT,
    passenger_id INT
);

CREATE TABLE Baggage (
    baggage_id INT,
    weight_in_kg DECIMAL(4,2),
    created_at TIMESTAMP,
    updated_at TIMESTAMP,
    booking_id INT
);

CREATE TABLE Boarding_pass (
    boarding_pass_id INT,
    booking_id INT,
    seat VARCHAR(50),
    boarding_time TIMESTAMP,
    created_at TIMESTAMP,
    updated_at TIMESTAMP
);

CREATE TABLE Booking_flight (
    booking_flight_id INT,
    booking_id INT,
    flight_id INT,
    created_at TIMESTAMP,
    updated_at TIMESTAMP
);

CREATE TABLE Booking (
    booking_id INT,
    flight_id INT,
    passenger_id INT,
    booking_platform VARCHAR(50),
    created_at TIMESTAMP,
    updated_at TIMESTAMP,
    status VARCHAR(50),
    price DECIMAL(7,2)
);

CREATE TABLE Flights (
    flight_id INT,
    sch_departure_time TIMESTAMP,
    sch_arrival_time TIMESTAMP,
    departing_airport_id INT,
    arriving_airport_id INT,
    departing_gate VARCHAR(50),
    arriving_gate VARCHAR(50),
    airline_id INT,
    act_departure_time TIMESTAMP,
    act_arrival_time TIMESTAMP,
    created_at TIMESTAMP,
    updated_at TIMESTAMP
);
CREATE TABLE Passengers (
    passenger_id INT,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    date_of_birth DATE,
    gender VARCHAR(50),
    country_of_citizenship VARCHAR(50),
    country_of_residence VARCHAR(50),
    passport_number VARCHAR(20),
    created_at TIMESTAMP,
    updated_at TIMESTAMP
);
CREATE TABLE Security_check (
    security_check_id INT,
    check_result VARCHAR(20),
    created_at TIMESTAMP,
    updated_at TIMESTAMP,
    passenger_id INT
);
ALTER TABLE Airport ADD PRIMARY KEY (airport_id);
ALTER TABLE Baggage_check ADD PRIMARY KEY (baggage_check_id);
ALTER TABLE Baggage ADD PRIMARY KEY (baggage_id);
ALTER TABLE Boarding_pass ADD PRIMARY KEY (boarding_pass_id);
ALTER TABLE Booking_flight ADD PRIMARY KEY (booking_flight_id);
ALTER TABLE Booking ADD PRIMARY KEY (booking_id);
ALTER TABLE Flights ADD PRIMARY KEY (flight_id);
ALTER TABLE Passengers ADD PRIMARY KEY (passenger_id);
ALTER TABLE Security_check ADD PRIMARY KEY (security_check_id);

ALTER TABLE Airport
ALTER COLUMN airport_name SET NOT NULL,
ALTER COLUMN country SET NOT NULL,
ALTER COLUMN state SET NOT NULL,
ALTER COLUMN city SET NOT NULL;

ALTER TABLE Baggage_check
ALTER COLUMN check_result SET NOT NULL,
ALTER COLUMN booking_id SET NOT NULL,
ALTER COLUMN passenger_id SET NOT NULL;

ALTER TABLE Baggage
ALTER COLUMN weight_in_kg SET NOT NULL,
ALTER COLUMN booking_id SET NOT NULL;

ALTER TABLE Boarding_pass
ALTER COLUMN booking_id SET NOT NULL,
ALTER COLUMN seat SET NOT NULL;

ALTER TABLE Booking_flight
ALTER COLUMN booking_id SET NOT NULL,
ALTER COLUMN flight_id SET NOT NULL;

ALTER TABLE Booking
ALTER COLUMN flight_id SET NOT NULL,
ALTER COLUMN passenger_id SET NOT NULL,
ALTER COLUMN booking_platform SET NOT NULL,
ALTER COLUMN status SET NOT NULL,
ALTER COLUMN price SET NOT NULL;

ALTER TABLE Flights
ALTER COLUMN sch_departure_time SET NOT NULL,
ALTER COLUMN sch_arrival_time SET NOT NULL,
ALTER COLUMN departing_airport_id SET NOT NULL,
ALTER COLUMN arriving_airport_id SET NOT NULL,
ALTER COLUMN departing_gate SET NOT NULL,
ALTER COLUMN arriving_gate SET NOT NULL,
ALTER COLUMN airline_id SET NOT NULL;

ALTER TABLE Passengers
ALTER COLUMN first_name SET NOT NULL,
ALTER COLUMN last_name SET NOT NULL,
ALTER COLUMN date_of_birth SET NOT NULL,
ALTER COLUMN gender SET NOT NULL,
ALTER COLUMN country_of_citizenship SET NOT NULL,
ALTER COLUMN country_of_residence SET NOT NULL,
ALTER COLUMN passport_number SET NOT NULL;

ALTER TABLE Security_check
ALTER COLUMN check_result SET NOT NULL,
ALTER COLUMN passenger_id SET NOT NULL;

ALTER TABLE Airline_info RENAME TO airline;
ALTER TABLE Booking RENAME COLUMN price TO ticket_price;
ALTER TABLE Flights
ALTER COLUMN departing_gate TYPE TEXT;
ALTER TABLE airline DROP COLUMN info;

SELECT * FROM Booking;


