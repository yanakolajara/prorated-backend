DROP DATABASE IF EXISTS prorated_dev;

CREATE DATABASE prorated_dev;

\c prorated_dev;

DROP TABLE IF EXISTS users;
DROP TABLE IF EXISTS contractors_services;
DROP TABLE IF EXISTS contractors;
DROP TABLE IF EXISTS services;
DROP TABLE IF EXISTS project_listings;

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

CREATE TABLE project_listings (
    id SERIAL PRIMARY KEY,
    user_id INTEGER REFERENCES users(id) ON DELETE CASCADE,
    services_id INTEGER REFERENCES services(id) ON DELETE CASCADE,
    title TEXT NOT NULL,
    summary TEXT NOT NULL,
    budget INT
)