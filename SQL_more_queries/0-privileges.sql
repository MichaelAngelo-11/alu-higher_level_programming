-- Create user_0d_1 and grant root privileges
CREATE USER IF NOT EXISTS 'user_0d_1'@'localhost' IDENTIFIED BY 'password';
GRANT ALL PRIVILEGES ON *.* TO 'user_0d_1'@'localhost' WITH GRANT OPTION;

-- Create user_0d_2 and grant SELECT & INSERT privileges on user_2_db
CREATE USER IF NOT EXISTS 'user_0d_2'@'localhost' IDENTIFIED BY 'password';
GRANT SELECT, INSERT ON user_2_db.* TO 'user_0d_2'@'localhost';

-- Apply changes
FLUSH PRIVILEGES;

-- List users to verify they exist
SELECT user, host FROM mysql.user WHERE user IN ('user_0d_1', 'user_0d_2');

-- Show privileges for user_0d_1
SHOW GRANTS FOR 'user_0d_1'@'localhost';

-- Show privileges for user_0d_2
SHOW GRANTS FOR 'user_0d_2'@'localhost';

