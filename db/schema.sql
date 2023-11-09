DROP DATABASE IF EXISTS prorated_dev;

CREATE DATABASE prorated_dev;

\c prorated_dev;

DROP TABLE IF EXISTS contractors;

CREATE TABLE contractors (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100),
    description TEXT NOT NULL,
    ratings INT,
    reviews INT
);

DROP TABLE IF EXISTS contractors_services;

CREATE TABLE contractors_services (
id SERIAL PRIMARY KEY,
contractor_id  INTEGER REFERENCES contractors(id),
service_id INTERGER

)

DROP TABLE IF EXISTS services;

CREATE TABLE services (
id INTEGER REFERENCES contractors_services(id)
name VARCHAR(50)
)
