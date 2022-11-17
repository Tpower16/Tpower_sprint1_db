/*
Inserting Data into the cities table

-- Not sure if the Bigint data type was the best case here for the Population Columns
-- Queries are taking longer then expected
*/
INSERT into "tp_qap1db".cities values (1, 'Denver', 'Colorado', 719238);
INSERT into "tp_qap1db".cities values (2, 'Phoenix', 'Arizona', 1660272);
INSERT into "tp_qap1db".cities values (3, 'Los Angeles', 'California', 3997984);
INSERT into "tp_qap1db".cities values (4, 'Chicago', 'Illinois', 2705994);
INSERT into "tp_qap1db".cities values (5, 'New York City', 'New York', 8879928);
INSERT into "tp_qap1db".cities values (6, 'Las Vegas', 'Nevada', 649876);
INSERT into "tp_qap1db".cities values (7, 'Salt Lake City', 'Utah', 200591);
INSERT into "tp_qap1db".cities values (8, 'Milwaukee', 'Wisconsin', 592025);
INSERT into "tp_qap1db".cities values (9, 'Nashville', 'Tennessee', 681928);
INSERT into "tp_qap1db".cities values (10, 'Houston', 'Texas', 2325502);

select * from "tp_qap1db".cities order by id ASC


/*
Inserting Data into the passengers table
*/
INSERT into "tp_qap1db".passengers values (1, 'Julian', 'Goldman', 7095716723, 1);
INSERT into "tp_qap1db".passengers values (2, 'Troy', 'Barnes', 7094248877, 2);
INSERT into "tp_qap1db".passengers values (3, 'Jeff', 'Smith', 7094228812, 3);
INSERT into "tp_qap1db".passengers values (4, 'Jennifer', 'Worthem', 7095713816, 4);
INSERT into "tp_qap1db".passengers values (5, 'Victoria', 'Stewert', 7096780091, 5);
INSERT into "tp_qap1db".passengers values (6, 'Caleb', 'Martin', 7092243610, 6);
INSERT into "tp_qap1db".passengers values (7, 'Taylor', 'Moulton', 7094247777, 7);
INSERT into "tp_qap1db".passengers values (8, 'Casey', 'Norton', 7098911010, 8);
INSERT into "tp_qap1db".passengers values (9, 'Joey', 'Richards', 7092243333, 9);
INSERT into "tp_qap1db".passengers values (10, 'Stephanie', 'Bloom', 7094220102, 10);
INSERT into "tp_qap1db".passengers values (11, 'Kane', 'Burton', 7090089876, 7);
INSERT into "tp_qap1db".passengers values (12, 'Klay', 'Bryant', 7094631999, 4);
INSERT into "tp_qap1db".passengers values (13, 'Russle', 'James', 7095556666, 9);
INSERT into "tp_qap1db".passengers values (14, 'Claude', 'Blanche', 7098749283, 2);
INSERT into "tp_qap1db".passengers values (15, 'Kendra', 'Sartor', 7092223357, 3);
INSERT into "tp_qap1db".passengers values (16, 'Shannon', 'Greene', 7098882314, 8);
INSERT into "tp_qap1db".passengers values (17, 'Matt', 'Ryan', 7094866609, 10);
INSERT into "tp_qap1db".passengers values (18, 'Austin', 'Reaves', 7096757656, 6);
INSERT into "tp_qap1db".passengers values (19, 'Roy', 'Parker', 7091258734, 1);
INSERT into "tp_qap1db".passengers values (20, 'Gus', 'Masters', 7099875008, 5);

select * from "tp_qap1db".passengers order by id asc


/*
Inserting Data into airports table

-- Some cities only had 1 airport located inside them, so I selected the closest airports 
-- to those respective cities
*/
INSERT into "tp_qap1db".airports values (1, 'Denver International Airport(DEN)', 'DEN', 1);
INSERT into "tp_qap1db".airports values (2, 'Centennial Airport(DEN)', 'APA', 1);
INSERT into "tp_qap1db".airports values (3, 'Phoenix Sky Harbor International Airport(PHX)', 'PHX', 2);
INSERT into "tp_qap1db".airports values (4, 'Phoenix-Mesa Gateway Airport(PHX)', 'AZA', 2);
INSERT into "tp_qap1db".airports values (5, 'Los Angeles International Airport(LA)', 'LAX', 3);
INSERT into "tp_qap1db".airports values (6, 'Hollywood Burbank Airport(LA)', 'BUR', 3);
INSERT into "tp_qap1db".airports values (7, 'O Hare International Airport(CHI)', 'ORD', 4);
INSERT into "tp_qap1db".airports values (8, 'Midway International Airport(CHI)', 'MDW', 4);
INSERT into "tp_qap1db".airports values (9, 'John F. Kennedy International Airport(NY)', 'JFK', 5);
INSERT into "tp_qap1db".airports values (10, 'LaGuardia Airport(NY)', 'LGA', 5);
INSERT into "tp_qap1db".airports values (11, 'North Las Vegas Airport(LV)', 'VGT', 6);
INSERT into "tp_qap1db".airports values (12, 'Harry Reid International Airport(LV)', 'LAS', 6);
INSERT into "tp_qap1db".airports values (13, 'Salt Lake City International Airport(SLC)', 'SLC', 7);
INSERT into "tp_qap1db".airports values (14, 'Skypark Airport(SLC)', 'BTF', 7);
INSERT into "tp_qap1db".airports values (15, 'Milwaukee Mitchell International Airport(MIL)', 'MKE', 8);
INSERT into "tp_qap1db".airports values (16, 'Lawrence J. Timmerman Airport(MIL)', 'MWC', 8);
INSERT into "tp_qap1db".airports values (17, 'Nashville International Airport(NVL)', 'BNA', 9);
INSERT into "tp_qap1db".airports values (18, 'John C. Tune Airport(NVL)', 'JWN', 9);
INSERT into "tp_qap1db".airports values (19, 'George Bush Intercontinental Airport(HOU)', 'IAH', 10);
INSERT into "tp_qap1db".airports values (20, 'William P. Hobby Airport(HOU)', 'HOU', 10);

select * from "tp_qap1db".airports order by id asc


/*
Inserting Data into the aircraft table
*/
INSERT into "tp_qap1db".aircraft values (1, 'Boeing 707', 'Delta Air Lines', 555);
INSERT into "tp_qap1db".aircraft values (2, 'Airbus A330', 'American Airlines', 700);
INSERT into "tp_qap1db".aircraft values (3, 'Boeing 747', 'Frontier Airlines', 600);
INSERT into "tp_qap1db".aircraft values (4, 'Cessna 172', 'Southwest Airlines', 650);
INSERT into "tp_qap1db".aircraft values (5, 'Comac C919', 'United Airlines', 500);
INSERT into "tp_qap1db".aircraft values (6, 'Airbus A220', 'Air Canada', 575);
INSERT into "tp_qap1db".aircraft values (7, 'Embraer E175', 'Alaska Airlines', 750);
INSERT into "tp_qap1db".aircraft values (8, 'Convair C208B', 'Air Canada', 625);

select * from "tp_qap1db".aircraft order by id asc


/*
Inserting Data into passengers_aircraft
*/
INSERT into "tp_qap1db".passengers_aircraft values (1, 1, 1);
INSERT into "tp_qap1db".passengers_aircraft values (2, 1, 8);
INSERT into "tp_qap1db".passengers_aircraft values (3, 2, 5);
INSERT into "tp_qap1db".passengers_aircraft values (4, 2, 6);
INSERT into "tp_qap1db".passengers_aircraft values (5, 3, 4);
INSERT into "tp_qap1db".passengers_aircraft values (6, 3, 7);
INSERT into "tp_qap1db".passengers_aircraft values (7, 4, 2);
INSERT into "tp_qap1db".passengers_aircraft values (8, 4, 3);
INSERT into "tp_qap1db".passengers_aircraft values (9, 5, 6);
INSERT into "tp_qap1db".passengers_aircraft values (10, 6, 8);
INSERT into "tp_qap1db".passengers_aircraft values (11, 6, 1);
INSERT into "tp_qap1db".passengers_aircraft values (12, 7, 5);
INSERT into "tp_qap1db".passengers_aircraft values (13, 8, 4);
INSERT into "tp_qap1db".passengers_aircraft values (14, 9, 7);
INSERT into "tp_qap1db".passengers_aircraft values (15, 9, 3);
INSERT into "tp_qap1db".passengers_aircraft values (16, 10, 2);
INSERT into "tp_qap1db".passengers_aircraft values (17, 11, 8);
INSERT into "tp_qap1db".passengers_aircraft values (18, 11, 6);
INSERT into "tp_qap1db".passengers_aircraft values (19, 12, 5);
INSERT into "tp_qap1db".passengers_aircraft values (20, 13, 1);
INSERT into "tp_qap1db".passengers_aircraft values (21, 13, 3);
INSERT into "tp_qap1db".passengers_aircraft values (22, 14, 4);
INSERT into "tp_qap1db".passengers_aircraft values (23, 15, 7);
INSERT into "tp_qap1db".passengers_aircraft values (24, 16, 2);
INSERT into "tp_qap1db".passengers_aircraft values (25, 17, 8);
INSERT into "tp_qap1db".passengers_aircraft values (26, 18, 6);
INSERT into "tp_qap1db".passengers_aircraft values (27, 19, 1);
INSERT into "tp_qap1db".passengers_aircraft values (28, 20, 3);

SELECT * from "tp_qap1db".passengers_aircraft


/*
Inserting Data into aircraft_airports table
*/
INSERT into "tp_qap1db".aircraft_airports values (1, 1);
INSERT into "tp_qap1db".aircraft_airports values (4, 1);
INSERT into "tp_qap1db".aircraft_airports values (8, 2);
INSERT into "tp_qap1db".aircraft_airports values (7, 2);
INSERT into "tp_qap1db".aircraft_airports values (2, 1);
INSERT into "tp_qap1db".aircraft_airports values (3, 1);
INSERT into "tp_qap1db".aircraft_airports values (5, 1);
INSERT into "tp_qap1db".aircraft_airports values (6, 1);
INSERT into "tp_qap1db".aircraft_airports values (8, 1);
INSERT into "tp_qap1db".aircraft_airports values (7, 1);
INSERT into "tp_qap1db".aircraft_airports values (6, 2);
INSERT into "tp_qap1db".aircraft_airports values (5, 2);
INSERT into "tp_qap1db".aircraft_airports values (4, 2);
INSERT into "tp_qap1db".aircraft_airports values (1, 3);
INSERT into "tp_qap1db".aircraft_airports values (2, 3);
INSERT into "tp_qap1db".aircraft_airports values (3, 3);
INSERT into "tp_qap1db".aircraft_airports values (4, 3);
INSERT into "tp_qap1db".aircraft_airports values (5, 3);
INSERT into "tp_qap1db".aircraft_airports values (6, 3);
INSERT into "tp_qap1db".aircraft_airports values (7, 3);
INSERT into "tp_qap1db".aircraft_airports values (8, 3);
INSERT into "tp_qap1db".aircraft_airports values (8, 4);
INSERT into "tp_qap1db".aircraft_airports values (5, 4);
INSERT into "tp_qap1db".aircraft_airports values (2, 4);
INSERT into "tp_qap1db".aircraft_airports values (6, 4);
INSERT into "tp_qap1db".aircraft_airports values (1, 5);
INSERT into "tp_qap1db".aircraft_airports values (2, 5);
INSERT into "tp_qap1db".aircraft_airports values (3, 5);
INSERT into "tp_qap1db".aircraft_airports values (4, 5);
INSERT into "tp_qap1db".aircraft_airports values (5, 5);
INSERT into "tp_qap1db".aircraft_airports values (6, 5);
INSERT into "tp_qap1db".aircraft_airports values (7, 5);
INSERT into "tp_qap1db".aircraft_airports values (8, 5);
INSERT into "tp_qap1db".aircraft_airports values (1, 6);
INSERT into "tp_qap1db".aircraft_airports values (3, 6);
INSERT into "tp_qap1db".aircraft_airports values (5, 6);
INSERT into "tp_qap1db".aircraft_airports values (7, 6);
INSERT into "tp_qap1db".aircraft_airports values (1, 7);
INSERT into "tp_qap1db".aircraft_airports values (2, 7);
INSERT into "tp_qap1db".aircraft_airports values (4, 7);
INSERT into "tp_qap1db".aircraft_airports values (8, 7);
INSERT into "tp_qap1db".aircraft_airports values (5, 7);
INSERT into "tp_qap1db".aircraft_airports values (1, 8);
INSERT into "tp_qap1db".aircraft_airports values (2, 8);
INSERT into "tp_qap1db".aircraft_airports values (8, 8);
INSERT into "tp_qap1db".aircraft_airports values (7, 8);
INSERT into "tp_qap1db".aircraft_airports values (6, 8);
INSERT into "tp_qap1db".aircraft_airports values (5, 8);
INSERT into "tp_qap1db".aircraft_airports values (4, 8);
INSERT into "tp_qap1db".aircraft_airports values (1, 9);
INSERT into "tp_qap1db".aircraft_airports values (2, 9);
INSERT into "tp_qap1db".aircraft_airports values (3, 9);
INSERT into "tp_qap1db".aircraft_airports values (4, 9);
INSERT into "tp_qap1db".aircraft_airports values (5, 9);
INSERT into "tp_qap1db".aircraft_airports values (6, 9);
INSERT into "tp_qap1db".aircraft_airports values (7, 9);
INSERT into "tp_qap1db".aircraft_airports values (8, 9);
INSERT into "tp_qap1db".aircraft_airports values (1, 10);
INSERT into "tp_qap1db".aircraft_airports values (5, 10);
INSERT into "tp_qap1db".aircraft_airports values (7, 10);
INSERT into "tp_qap1db".aircraft_airports values (4, 10);
INSERT into "tp_qap1db".aircraft_airports values (5, 11);
INSERT into "tp_qap1db".aircraft_airports values (7, 11);
INSERT into "tp_qap1db".aircraft_airports values (2, 11);
INSERT into "tp_qap1db".aircraft_airports values (1, 12);
INSERT into "tp_qap1db".aircraft_airports values (8, 12);
INSERT into "tp_qap1db".aircraft_airports values (5, 12);
INSERT into "tp_qap1db".aircraft_airports values (2, 13);
INSERT into "tp_qap1db".aircraft_airports values (7, 13);
INSERT into "tp_qap1db".aircraft_airports values (5, 13);
INSERT into "tp_qap1db".aircraft_airports values (1, 14);
INSERT into "tp_qap1db".aircraft_airports values (8, 14);
INSERT into "tp_qap1db".aircraft_airports values (6, 14);
INSERT into "tp_qap1db".aircraft_airports values (4, 15);
INSERT into "tp_qap1db".aircraft_airports values (3, 15);
INSERT into "tp_qap1DB".aircraft_airports values (7, 15);
INSERT into "tp_qap1db".aircraft_airports values (5, 16);
INSERT into "tp_qap1db".aircraft_airports values (8, 17);
INSERT into "tp_qap1db".aircraft_airports values (2, 17);
INSERT into "tp_qap1db".aircraft_airports values (6, 18);
INSERT into "tp_qap1db".aircraft_airports values (8, 18);
INSERT into "tp_qap1db".aircraft_airports values (4, 18);
INSERT into "tp_qap1db".aircraft_airports values (1, 19);
INSERT into "tp_qap1db".aircraft_airports values (2, 19);
INSERT into "tp_qap1db".aircraft_airports values (7, 19);
INSERT into "tp_qap1db".aircraft_airports values (3, 20);
INSERT into "tp_qap1db".aircraft_airports values (6, 20);
INSERT into "tp_qap1db".aircraft_airports values (8, 20);
INSERT into "tp_qap1db".aircraft_airports values (2, 20);

SELECT * from "tp_qap1db".aircraft_airports


/*
Inserting Data into airports_passengers table
*/
INSERT into "tp_qap1db".airports_passengers values (1, 1);
INSERT into "tp_qap1db".airports_passengers values (2, 1);
INSERT into "tp_qap1db".airports_passengers values (3, 2);
INSERT into "tp_qap1db".airports_passengers values (4, 2);
INSERT into "tp_qap1db".airports_passengers values (5, 3);
INSERT into "tp_qap1db".airports_passengers values (6, 3);
INSERT into "tp_qap1db".airports_passengers values (7, 4);
INSERT into "tp_qap1db".airports_passengers values (8, 4);
INSERT into "tp_qap1db".airports_passengers values (9, 5);
INSERT into "tp_qap1db".airports_passengers values (10, 5);
INSERT into "tp_qap1db".airports_passengers values (11, 6);
INSERT into "tp_qap1db".airports_passengers values (12, 6);
INSERT into "tp_qap1db".airports_passengers values (13, 7);
INSERT into "tp_qap1db".airports_passengers values (14, 7);
INSERT into "tp_qap1db".airports_passengers values (15, 8);
INSERT into "tp_qap1db".airports_passengers values (16, 8);
INSERT into "tp_qap1db".airports_passengers values (17, 9);
INSERT into "tp_qap1db".airports_passengers values (18, 9);
INSERT into "tp_qap1db".airports_passengers values (19, 10);
INSERT into "tp_qap1db".airports_passengers values (20, 10);

SELECT * from "tp_qap1db".airports_passengers


/*
Question #1
*/
SELECT airports."airportName", cities."cityName" FROM "tp_qap1db".airports, "tp_qap1db".cities
WHERE airports.city_id = cities.id ORDER by cities."cityName";


/*
Question #2
*/
SELECT passengers."firstname", passengers."lastname", aircraft."aircraft_type" 
FROM "tp_qap1db".passengers, "tp_qap1db".aircraft, "tp_qap1db".passengers_aircraft
WHERE passengers.id = passengers_aircraft.passengers_id and aircraft.id = passengers_aircraft.aircraft_id 
order by aircraft."aircraft_type" asc;


/*
Question #3
*/
SELECT airports."airportName", aircraft."aircraft_type" 
FROM "tp_qap1db".airports, "tp_qap1db".aircraft, "tp_qap1db".aircraft_airports
WHERE airports.id = aircraft_airports.airport_id and aircraft.id = aircraft_airports.aircraft_id 
order by airports."airportName" asc;


/*
Question #4
*/
SELECT airports."airportName", passengers."firstname", passengers."lastname"
FROM "tp_qap1db".airports, "tp_qap1db".passengers, "tp_qap1db".airports_passengers
WHERE airports.id = airports_passengers.airports_id and passengers.id = airports_passengers.passengers_id
order by airports."airportName" asc;
