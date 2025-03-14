-- Create user_0d_1 and grant root privileges
CREATE USER IF NOT EXISTS 'user_0d_1'@'localhost' IDENTIFIED BY 'password';
GRANT ALL PRIVILEGES ON *.* TO 'user_0d_1'@'localhost' WITH GRANT OPTION;

-- Create user_0d_2 and grant SELECT & INSERT privileges on user_2_db
CREATE USER IF NOT EXISTS 'user_0d_2'@'localhost' IDENTIFIED BY 'password';
GRANT SELECT, INSERT ON user_2_db.* TO 'user_0d_2'@'localhost';

-- Apply changes
FLUSH PRIVILEGES;
