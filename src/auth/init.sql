CREATE USER 'auth_user'@'localhost' IDENTIFIED BY 'Auth123';
CREATE DATABASE auth;
GRANT ALL PRIVILEGES ON auth.* TO 'auth_user'@'localhost';
USE auth;

CREATE TABLE user (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    email VARCHAR(255) NOT NULL UNIQUE,
    pass VARCHAR(255) NOT NULL
);

INSERT INTO user (email, pass) VALUES ('robert@email.com', 'Admin123');