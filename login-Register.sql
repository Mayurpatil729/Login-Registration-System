CREATE DATABASE login_registration_db;
USE login_registration_db;

 
CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,         -- Unique ID for each user
    email VARCHAR(255) NOT NULL UNIQUE,        -- Email address, must be unique
    username VARCHAR(50) NOT NULL UNIQUE,      -- Username, must be unique
    password VARCHAR(255) NOT NULL,            -- Password (usually stored hashed)
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP -- Timestamp when the user is created
);
