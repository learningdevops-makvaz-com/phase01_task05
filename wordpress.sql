CREATE DATABASE wordpress;
CREATE USER 'wordpress'@'localhost' IDENTIFIED BY 'P@$$w0rd!';
GRANT ALL PRIVILEGES ON wordpress.* TO 'wordpress'@'localhost';
CREATE USER 'wordpress'@'192.168.50.2' IDENTIFIED BY 'P@$$w0rd!';
GRANT ALL PRIVILEGES ON wordpress.* TO 'wordpress'@'192.168.50.2';
FLUSH PRIVILEGES;