-- Database security review checks (run in a controlled lab)
SELECT @@bind_address AS bind_address;
SHOW VARIABLES LIKE 'require_secure_transport';
SHOW VARIABLES LIKE 'local_infile';
SHOW VARIABLES LIKE 'validate_password.policy';
SELECT user, host FROM mysql.user WHERE user='root';
SELECT user, host FROM mysql.user WHERE host='%';
