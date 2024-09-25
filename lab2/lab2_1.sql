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


ALTER TABLE Airline_info RENAME TO airline;
ALTER TABLE Booking RENAME COLUMN price TO ticket_price;
ALTER TABLE Flights
ALTER COLUMN departing_gate TYPE TEXT;
ALTER TABLE airline DROP COLUMN info;


--|||ending of the lab 1



insert into Airport (airport_id , airport_name, country, state, city, created_at, updated_at) values (2977, 'Montrose Regional Airport', 'China', null, 'Zhonggang', '10/25/2023', '5/16/2024');
insert into Airport (airport_id , airport_name, country, state, city, created_at, updated_at) values (8831, 'Tokeen Seaplane Base', 'China', null, 'Pingshui', '12/19/2023', '8/21/2024');
insert into Airport (airport_id , airport_name, country, state, city, created_at, updated_at) values (5010, 'Gravatai Airport', 'Philippines', null, 'Lubuagan', '9/4/2024', '6/12/2024');
insert into Airport (airport_id , airport_name, country, state, city, created_at, updated_at) values (7657, 'Pemba Airport', 'China', null, 'Erling', '4/9/2024', '1/13/2024');
insert into Airport (airport_id , airport_name, country, state, city, created_at, updated_at) values (4627, 'Wycombe Air Park', 'Brazil', null, 'Pompéia', '11/16/2023', '11/28/2023');
insert into Airport (airport_id , airport_name, country, state, city, created_at, updated_at) values (2166, 'Parry Sound/Frying Pan Island-Sans Souci Seaplane Base', 'Indonesia', null, 'Tutul', '9/6/2024', '8/10/2024');
insert into Airport (airport_id , airport_name, country, state, city, created_at, updated_at) values (9429, 'Narrandera Airport', 'United States', 'Massachusetts', 'Boston', '4/30/2024', '2/22/2024');
insert into Airport (airport_id , airport_name, country, state, city, created_at, updated_at) values (5419, 'Cornwall Regional Airport', 'Argentina', null, 'El Bolsón', '12/25/2023', '2/9/2024');
insert into Airport (airport_id , airport_name, country, state, city, created_at, updated_at) values (9184, 'Mahana Airport', 'Kosovo', null, 'Vitina', '5/7/2024', '11/5/2023');
insert into Airport (airport_id , airport_name, country, state, city, created_at, updated_at) values (1927, 'Huallaga Airport', 'China', null, 'Nanyang', '8/12/2024', '1/7/2024');
insert into Airport (airport_id , airport_name, country, state, city, created_at, updated_at) values (1452, 'Lake County Airport', 'Russia', null, 'Egvekinot', '10/5/2023', '8/22/2024');
insert into Airport (airport_id , airport_name, country, state, city, created_at, updated_at) values (8525, 'Ängelholm-Helsingborg Airport', 'Philippines', null, 'Sapang Buho', '1/24/2024', '5/26/2024');
insert into Airport (airport_id , airport_name, country, state, city, created_at, updated_at) values (3645, 'El Embrujo Airport', 'Portugal', 'Lisboa', 'Odivelas', '12/3/2023', '7/13/2024');
insert into Airport (airport_id , airport_name, country, state, city, created_at, updated_at) values (8279, 'Buffalo Narrows Airport', 'Tanzania', null, 'Mpanda', '2/15/2024', '12/24/2023');
insert into Airport (airport_id , airport_name, country, state, city, created_at, updated_at) values (6559, 'Songwe Airport', 'Australia', 'New South Wales', 'Sydney', '11/13/2023', '6/13/2024');
insert into Airport (airport_id , airport_name, country, state, city, created_at, updated_at) values (3770, 'Ituberá Airport', 'Colombia', null, 'Túquerres', '10/20/2023', '4/11/2024');
insert into Airport (airport_id , airport_name, country, state, city, created_at, updated_at) values (5070, 'Leaf Rapids Airport', 'Honduras', null, 'La Guacamaya', '9/7/2024', '1/14/2024');
insert into Airport (airport_id , airport_name, country, state, city, created_at, updated_at) values (8369, 'Coolawanyah Airport', 'China', null, 'Doujia', '3/1/2024', '9/13/2024');
insert into Airport (airport_id , airport_name, country, state, city, created_at, updated_at) values (9460, 'El Mirador Airport', 'China', null, 'Tanbu', '10/10/2023', '6/3/2024');
insert into Airport (airport_id , airport_name, country, state, city, created_at, updated_at) values (6985, 'Harrell Field', 'Brazil', null, 'Jaboatão', '9/20/2024', '4/29/2024');
insert into Airport (airport_id , airport_name, country, state, city, created_at, updated_at) values (2161, 'Bowman Regional Airport', 'Egypt', null, 'Marsa Alam', '3/19/2024', '6/20/2024');
insert into Airport (airport_id , airport_name, country, state, city, created_at, updated_at) values (7170, 'Stanthorpe Airport', 'China', null, 'Huaguoshan', '6/10/2024', '4/25/2024');
insert into Airport (airport_id , airport_name, country, state, city, created_at, updated_at) values (1118, 'Guaratinguetá Airport', 'France', 'Île-de-France', 'Sainte-Geneviève-des-Bois', '6/27/2024', '3/1/2024');
insert into Airport (airport_id , airport_name, country, state, city, created_at, updated_at) values (6921, 'Sultan Syarif Kasim Ii (Simpang Tiga) Airport', 'Ukraine', null, 'Brody', '10/21/2023', '1/7/2024');
insert into Airport (airport_id , airport_name, country, state, city, created_at, updated_at) values (9577, 'Saint John Airport', 'Zambia', null, 'Mungwi', '3/16/2024', '9/8/2024');
insert into Airport (airport_id , airport_name, country, state, city, created_at, updated_at) values (4832, 'Idiofa Airport', 'Indonesia', null, 'Ubud', '2/1/2024', '1/22/2024');
insert into Airport (airport_id , airport_name, country, state, city, created_at, updated_at) values (9294, 'Delta Municipal Airport', 'Japan', null, 'Okazaki', '3/21/2024', '11/29/2023');
insert into Airport (airport_id , airport_name, country, state, city, created_at, updated_at) values (8828, 'Libo Airport', 'Sri Lanka', null, 'Welisara', '8/2/2024', '9/16/2024');
insert into Airport (airport_id , airport_name, country, state, city, created_at, updated_at) values (1357, 'Bokoro Airport', 'Nigeria', null, 'Kwale', '7/9/2024', '4/29/2024');
insert into Airport (airport_id , airport_name, country, state, city, created_at, updated_at) values (6082, 'Rum Cay Airport', 'France', 'Rhône-Alpes', 'Grenoble', '1/29/2024', '4/13/2024');
insert into Airport (airport_id , airport_name, country, state, city, created_at, updated_at) values (8921, 'Isisford Airport', 'China', null, 'Baoxia', '9/26/2023', '3/25/2024');
insert into Airport (airport_id , airport_name, country, state, city, created_at, updated_at) values (5975, 'Valle Del Conlara International Airport', 'Russia', null, 'Orlovo', '12/5/2023', '1/24/2024');
insert into Airport (airport_id , airport_name, country, state, city, created_at, updated_at) values (8485, 'St Clair County International Airport', 'Canada', 'Québec', 'Havre-Saint-Pierre', '9/28/2023', '12/18/2023');
insert into Airport (airport_id , airport_name, country, state, city, created_at, updated_at) values (8238, 'Columbia Airport', 'Mauritius', null, 'Melrose', '7/23/2024', '5/15/2024');
insert into Airport (airport_id , airport_name, country, state, city, created_at, updated_at) values (9690, 'Baramita Airport', 'Ukraine', null, 'Kobelyaky', '9/6/2024', '7/20/2024');
insert into Airport (airport_id , airport_name, country, state, city, created_at, updated_at) values (8360, 'Brunswick Executive Airport', 'France', 'Picardie', 'Compiègne', '5/4/2024', '4/7/2024');
insert into Airport (airport_id , airport_name, country, state, city, created_at, updated_at) values (1913, 'Brigham City Regional Airport', 'Greece', null, 'Agios Dimitrios', '7/6/2024', '3/26/2024');
insert into Airport (airport_id , airport_name, country, state, city, created_at, updated_at) values (6427, 'Stung Treng Airport', 'Guadeloupe', 'Guadeloupe', 'Jarry', '1/27/2024', '8/1/2024');
insert into Airport (airport_id , airport_name, country, state, city, created_at, updated_at) values (6456, 'Hwange National Park Airport', 'Brazil', null, 'Capivari', '6/5/2024', '2/6/2024');
insert into Airport (airport_id , airport_name, country, state, city, created_at, updated_at) values (7188, 'Hoonah Airport', 'Thailand', null, 'Lamduan', '7/27/2024', '7/22/2024');
insert into Airport (airport_id , airport_name, country, state, city, created_at, updated_at) values (7874, 'Kabri Dehar Airport', 'Argentina', null, 'Añatuya', '4/29/2024', '3/6/2024');
insert into Airport (airport_id , airport_name, country, state, city, created_at, updated_at) values (7003, 'Alice International Airport', 'Brazil', null, 'Guarabira', '6/2/2024', '9/13/2024');
insert into Airport (airport_id , airport_name, country, state, city, created_at, updated_at) values (6714, 'Auburn Municipal Airport', 'Netherlands', 'Provincie Gelderland', 'Wageningen', '8/30/2024', '6/21/2024');
insert into Airport (airport_id , airport_name, country, state, city, created_at, updated_at) values (8586, 'Hamilton International Airport', 'Indonesia', null, 'Salinggara', '2/5/2024', '4/4/2024');
insert into Airport (airport_id , airport_name, country, state, city, created_at, updated_at) values (5279, 'Lumberton Regional Airport', 'Sweden', 'Skåne', 'Arlöv', '2/14/2024', '1/2/2024');
insert into Airport (airport_id , airport_name, country, state, city, created_at, updated_at) values (1402, 'Ciudad Acuña New International Airport', 'Thailand', null, 'Lahan Sai', '9/20/2024', '7/4/2024');
insert into Airport (airport_id , airport_name, country, state, city, created_at, updated_at) values (3107, 'Auburn Lewiston Municipal Airport', 'Russia', null, 'Yerofey Pavlovich', '2/22/2024', '12/26/2023');
insert into Airport (airport_id , airport_name, country, state, city, created_at, updated_at) values (4586, 'Preguiça Airport', 'New Zealand', null, 'New Plymouth', '4/2/2024', '8/30/2024');
insert into Airport (airport_id , airport_name, country, state, city, created_at, updated_at) values (1856, 'Punta Cana International Airport', 'Indonesia', null, 'Tlogocilik', '2/16/2024', '2/3/2024');
insert into Airport (airport_id , airport_name, country, state, city, created_at, updated_at) values (9505, 'Minhas Air Base', 'Syria', null, 'Tasīl', '10/21/2023', '5/4/2024');
insert into Airport (airport_id , airport_name, country, state, city, created_at, updated_at) values (3886, 'Alashankou Bole (Bortala) airport', 'United States', 'Louisiana', 'New Orleans', '8/6/2024', '12/11/2023');
insert into Airport (airport_id , airport_name, country, state, city, created_at, updated_at) values (8172, 'Raivavae Airport', 'Thailand', null, 'Phatthana Nikhom', '4/10/2024', '9/18/2024');
insert into Airport (airport_id , airport_name, country, state, city, created_at, updated_at) values (5719, 'Pangborn Memorial Airport', 'New Zealand', null, 'Palmerston North', '2/1/2024', '7/11/2024');
insert into Airport (airport_id , airport_name, country, state, city, created_at, updated_at) values (7245, 'Blubber Bay Seaplane Base', 'Portugal', 'Évora', 'São Pedro Gafanhoeira', '5/26/2024', '3/19/2024');
insert into Airport (airport_id , airport_name, country, state, city, created_at, updated_at) values (2517, 'Tandag Airport', 'Indonesia', null, 'Kapakabisa', '11/7/2023', '8/13/2024');
insert into Airport (airport_id , airport_name, country, state, city, created_at, updated_at) values (3210, 'Ohkay Owingeh Airport', 'Indonesia', null, 'Sampangbitung', '8/8/2024', '8/28/2024');
insert into Airport (airport_id , airport_name, country, state, city, created_at, updated_at) values (8161, 'Pope Field', 'Chile', null, 'Ovalle', '6/15/2024', '1/16/2024');
insert into Airport (airport_id , airport_name, country, state, city, created_at, updated_at) values (2834, 'Miller Field', 'China', null, 'Yangchun', '5/29/2024', '1/8/2024');
insert into Airport (airport_id , airport_name, country, state, city, created_at, updated_at) values (6385, 'Wattay International Airport', 'China', null, 'Liulin', '11/12/2023', '6/12/2024');
insert into Airport (airport_id , airport_name, country, state, city, created_at, updated_at) values (2468, 'Betioky Airport', 'Russia', null, 'Verkhniy Landekh', '1/23/2024', '12/6/2023');
insert into Airport (airport_id , airport_name, country, state, city, created_at, updated_at) values (5621, 'Nukutavake Airport', 'Czech Republic', null, 'Hrotovice', '10/1/2023', '2/12/2024');
insert into Airport (airport_id , airport_name, country, state, city, created_at, updated_at) values (1912, 'Robert L. Bradshaw International Airport', 'Poland', null, 'Łapczyca', '9/20/2024', '12/2/2023');
insert into Airport (airport_id , airport_name, country, state, city, created_at, updated_at) values (8932, 'El Nido Airport', 'Brazil', null, 'Dois Córregos', '4/14/2024', '2/3/2024');
insert into Airport (airport_id , airport_name, country, state, city, created_at, updated_at) values (7011, 'Dover Air Force Base', 'China', null, 'Tongquan', '7/14/2024', '1/7/2024');
insert into Airport (airport_id , airport_name, country, state, city, created_at, updated_at) values (5047, 'Malta International Airport', 'United States', 'Connecticut', 'New Haven', '9/28/2023', '10/13/2023');
insert into Airport (airport_id , airport_name, country, state, city, created_at, updated_at) values (4727, 'Enyu Airfield', 'Ireland', null, 'Portarlington', '6/7/2024', '8/20/2024');
insert into Airport (airport_id , airport_name, country, state, city, created_at, updated_at) values (1088, 'Tosontsengel Airport', 'China', null, 'Changzhi', '4/18/2024', '12/21/2023');
insert into Airport (airport_id , airport_name, country, state, city, created_at, updated_at) values (4380, 'Madras Municipal Airport', 'Indonesia', null, 'Cisantri', '12/6/2023', '8/24/2024');
insert into Airport (airport_id , airport_name, country, state, city, created_at, updated_at) values (1356, 'Ugolny Airport', 'Venezuela', null, 'Sabana Grande', '9/4/2024', '9/21/2024');
insert into Airport (airport_id , airport_name, country, state, city, created_at, updated_at) values (4364, 'Sparrevohn LRRS Airport', 'Russia', null, 'Donetsk', '1/24/2024', '11/12/2023');
insert into Airport (airport_id , airport_name, country, state, city, created_at, updated_at) values (1160, 'Puerto Rico Airport', 'China', null, 'Yingkeng', '4/12/2024', '3/4/2024');
insert into Airport (airport_id , airport_name, country, state, city, created_at, updated_at) values (7697, 'Kangiqsujuaq (Wakeham Bay) Airport', 'Czech Republic', null, 'Blatná', '6/18/2024', '2/3/2024');
insert into Airport (airport_id , airport_name, country, state, city, created_at, updated_at) values (1599, 'Katiu Airport', 'Poland', null, 'Rędziny', '12/15/2023', '2/7/2024');
insert into Airport (airport_id , airport_name, country, state, city, created_at, updated_at) values (5143, 'Warracknabeal Airport', 'Japan', null, 'Yanai', '11/21/2023', '4/16/2024');
insert into Airport (airport_id , airport_name, country, state, city, created_at, updated_at) values (2006, 'Benina International Airport', 'China', null, 'Huangtu', '12/25/2023', '3/11/2024');
insert into Airport (airport_id , airport_name, country, state, city, created_at, updated_at) values (4484, 'Modesto City Co-Harry Sham Field', 'Sweden', 'Norrbotten', 'Boden', '7/30/2024', '7/4/2024');
insert into Airport (airport_id , airport_name, country, state, city, created_at, updated_at) values (3851, 'Cadjehoun Airport', 'Malaysia', 'Pahang', 'Kuantan', '9/26/2023', '2/11/2024');
insert into Airport (airport_id , airport_name, country, state, city, created_at, updated_at) values (4780, 'Essen Mulheim Airport', 'Poland', null, 'Płock', '1/3/2024', '9/6/2024');
insert into Airport (airport_id , airport_name, country, state, city, created_at, updated_at) values (8482, 'Mianyang Airport', 'China', null, 'Dandian', '4/20/2024', '10/27/2023');
insert into Airport (airport_id , airport_name, country, state, city, created_at, updated_at) values (4782, 'Elista Airport', 'China', null, 'Zhongyuanlu', '11/20/2023', '3/1/2024');
insert into Airport (airport_id , airport_name, country, state, city, created_at, updated_at) values (1353, 'Shenzhen Bao''an International Airport', 'Indonesia', null, 'Kedungtaman', '8/2/2024', '10/20/2023');
insert into Airport (airport_id , airport_name, country, state, city, created_at, updated_at) values (6136, 'Laurie River Airport', 'Poland', null, 'Przyborów', '12/19/2023', '2/4/2024');
insert into Airport (airport_id , airport_name, country, state, city, created_at, updated_at) values (4401, 'Gary Chicago International Airport', 'France', 'Nord-Pas-de-Calais', 'Dunkerque', '1/5/2024', '12/11/2023');
insert into Airport (airport_id , airport_name, country, state, city, created_at, updated_at) values (6252, 'Tororo Airport', 'Egypt', null, 'Al Fayyūm', '4/4/2024', '11/20/2023');
insert into Airport (airport_id , airport_name, country, state, city, created_at, updated_at) values (9939, 'Nottingham Airport', 'Albania', null, 'Udënisht', '3/24/2024', '10/15/2023');
insert into Airport (airport_id , airport_name, country, state, city, created_at, updated_at) values (2526, 'Bonriki International Airport', 'Ivory Coast', null, 'Bangolo', '11/10/2023', '8/26/2024');
insert into Airport (airport_id , airport_name, country, state, city, created_at, updated_at) values (3235, 'Iffley Airport', 'China', null, 'Chengguan', '11/12/2023', '3/1/2024');
insert into Airport (airport_id , airport_name, country, state, city, created_at, updated_at) values (8954, 'Hayman Island Resort Seaplane Base', 'Ukraine', null, 'Nelipyno', '10/27/2023', '1/22/2024');
insert into Airport (airport_id , airport_name, country, state, city, created_at, updated_at) values (2920, 'Sievierodonetsk Airport', 'China', null, 'Shangqing', '2/24/2024', '11/7/2023');
insert into Airport (airport_id , airport_name, country, state, city, created_at, updated_at) values (3351, 'Gove Airport', 'Greece', null, 'Elefsína', '10/9/2023', '2/8/2024');
insert into Airport (airport_id , airport_name, country, state, city, created_at, updated_at) values (6971, 'São Mateus Airport', 'Bangladesh', null, 'Sātkania', '7/20/2024', '9/19/2024');
insert into Airport (airport_id , airport_name, country, state, city, created_at, updated_at) values (3765, 'Kasungu Airport', 'Indonesia', null, 'Bangbayang', '2/17/2024', '3/4/2024');
insert into Airport (airport_id , airport_name, country, state, city, created_at, updated_at) values (8245, 'Terre-de-Haut Airport', 'Indonesia', null, 'Sidamulya Satu', '10/1/2023', '2/2/2024');
insert into Airport (airport_id , airport_name, country, state, city, created_at, updated_at) values (3289, 'Dyess Air Force Base', 'Thailand', null, 'Phatthalung', '12/19/2023', '2/27/2024');
insert into Airport (airport_id , airport_name, country, state, city, created_at, updated_at) values (6372, 'Ban Huoeisay Airport', 'Pakistan', null, 'Khānpur', '10/15/2023', '1/15/2024');
insert into Airport (airport_id , airport_name, country, state, city, created_at, updated_at) values (9586, 'Ingalls Field', 'Russia', null, 'Bryansk', '6/12/2024', '6/17/2024');
insert into Airport (airport_id , airport_name, country, state, city, created_at, updated_at) values (1718, 'Robertson Airport', 'Russia', null, 'Sviblovo', '10/18/2023', '9/23/2024');
insert into Airport (airport_id , airport_name, country, state, city, created_at, updated_at) values (3685, 'Coober Pedy Airport', 'Russia', null, 'Valerik', '10/23/2023', '9/28/2023');
insert into Airport (airport_id , airport_name, country, state, city, created_at, updated_at) values (8137, 'Ørland Airport', 'Sweden', 'Västmanland', 'Västerås', '10/28/2023', '1/20/2024');
insert into Airport (airport_id , airport_name, country, state, city, created_at, updated_at) values (1813, 'Mount Aue Airport', 'Yemen', null, 'Al Qurayshīyah', '1/16/2024', '6/2/2024');



INSERT INTO airline (airline_name, airline_country) VALUES ('KazAir', 'Kazakhstan');


UPDATE airline SET airline_country = 'Turkey' WHERE  airline_name= 'KazAir';


DELETE FROM airline WHERE airline_name = 'SIT';

INSERT INTO airline (airline_name, airline_country) VALUES
('AirEasy', 'France'),
('FlyHigh', 'Brazil'),
('FlyFly', 'Poland');


DELETE FROM flights WHERE EXTRACT(YEAR FROM  act_arrival_time) = 2024;

UPDATE booking SET ticket_price = ticket_price* 1.10;

DELETE FROM booking WHERE ticket_price< 1000;

SELECT *From flights;