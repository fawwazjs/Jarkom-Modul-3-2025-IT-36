#!/bin/bash

mysql<<EOF
CREATE DATABASE K36DB;
USE K36DB;

CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    origin VARCHAR(100)
);

INSERT INTO users (name, origin) VALUES
('Galadhrim', 'Lothlorien'),
('Noldor', 'Valinor');

SHOW TABLES;
SELECT * FROM users;
EOF
