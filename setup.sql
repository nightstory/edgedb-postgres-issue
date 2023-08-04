CREATE DATABASE edgedb;
CREATE USER edgedb WITH ENCRYPTED PASSWORD 'edgedb';
ALTER DATABASE edgedb OWNER TO edgedb;

-- does not help, just removes the warnings from the postgres logs
-- ALTER USER edgedb WITH SUPERUSER;