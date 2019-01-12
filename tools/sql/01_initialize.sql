CREATE ROLE api_phoenix_role WITH LOGIN PASSWORD 'api_phoenix_pass';
CREATE DATABASE api_phoenix_db  WITH OWNER api_phoenix_role;
