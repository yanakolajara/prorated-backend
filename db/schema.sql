DROP DATABASE IF EXISTS prorated_dev;

CREATE DATABASE prorated_dev;

\c prorated_dev;

DROP TABLE IF EXISTS users;
DROP TABLE IF EXISTS contractors_services;
DROP TABLE IF EXISTS contractors;
DROP TABLE IF EXISTS services;

CREATE TABLE users (
  id SERIAL PRIMARY KEY,
  username VARCHAR(25) NOT NULL,
  password VARCHAR(25) NOT NULL,
  email TEXT NOT NULL,
  first_name VARCHAR(255),
  last_name VARCHAR(255),
  phone_number VARCHAR(15),
  profile_picture VARCHAR(255),
  location VARCHAR(100)
);

CREATE TABLE contractors (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100),
    description TEXT NOT NULL,
    ratings INT,
    reviews INT
);

CREATE TABLE services (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100),
    description TEXT NOT NULL,
    custom BOOLEAN,
    image TEXT
);

CREATE TABLE contractors_services (
    id SERIAL PRIMARY KEY,
    contractor_id INTEGER REFERENCES contractors(id)
    ON DELETE CASCADE,
    service_id INTEGER REFERENCES services(id)
    ON DELETE CASCADE
);

CREATE TABLE reviews (
    id BIGSERIAL NOT NULL PRIMARY KEY,
    contractor_id INTEGER NOT NULL REFERENCES contractors(id),
    user_id  INTEGER NOT NULL REFERENCES users(id),
    review TEXT NOT NULL,
    rating INT NOT NULL CHECK(rating >=1 and rating <= 5),
    date TIMESTAMP
);